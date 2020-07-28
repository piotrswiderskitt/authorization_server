create table oauth_client_details (
  client_id varchar(255) not null,
  client_secret varchar(255) not null,
  web_server_redirect_uri varchar(2048) default null,
  scope varchar(255) default null,
  access_token_validity integer default null,
  refresh_token_validity integer default null,
  resource_ids varchar(1024) default null,
  authorized_grant_types varchar(1024) default null,
  authorities varchar(1024) default null,
  additional_information varchar(4096) default null,
  autoapprove varchar(255) default null,
  primary key (client_id)
);

create table permission (
  id bigserial not null,
  name varchar(512) default null,
  primary key (id),
  unique(name)
);

create table role (
  id bigserial not null,
  name varchar(255) default null,
  primary key (id),
  unique(name)
);

create table user_table (
  id bigserial not null,
  username varchar(100) not null,
  password varchar(1024) not null,
  email varchar(1024) not null,
  enabled boolean default true,
  account_non_expired boolean default true,
  credentials_non_expired boolean default true,
  account_non_locked boolean default true,
  primary key (id),
  unique(username),
  unique(email)
);


create table permission_role (
  permission_id bigserial references permission (id),
  role_id bigserial references role (id),
  primary key(permission_id, role_id)
);

create table role_user (
  role_id bigserial references role(id),
  user_id bigserial references user_table(id),
  primary key(role_id, user_id)
);

