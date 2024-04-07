using { ns as my } from '../db/schema.cds';

@path : '/service/liatcicd'
service liatcicd
{
    @odata.draft.enabled
    entity Books as
        projection on my.Books;
}

annotate liatcicd with @requires :
[
    'authenticated-user'
];
