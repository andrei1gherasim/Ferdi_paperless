with 
doc_tag_count as (
	select 
		document_id
		, count(tag_id) as tag_count 
	from documents_document_tags
	group by document_id),
doc_with_more_tags as (	
	select 
		document_id 
	from doc_tag_count
	where tag_count > 1
	)
select
	doc_tags.id
	, docs.title
	, documents_tag.name
from documents_document as docs
join documents_document_tags as doc_tags on doc_tags.document_id=docs.id
join doc_with_more_tags on doc_with_more_tags.document_id=docs.id
join documents_tag on documents_tag.id=doc_tags.tag_id
order by title, name;
