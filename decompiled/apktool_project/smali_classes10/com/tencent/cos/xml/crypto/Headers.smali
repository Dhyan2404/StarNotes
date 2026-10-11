.class public interface abstract Lcom/tencent/cos/xml/crypto/Headers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPEND_OBJECT_NEXT_POSISTION:Ljava/lang/String; = "x-cos-next-append-position"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CI_REQUEST_ID:Ljava/lang/String; = "x-ci-request-id"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_MD5:Ljava/lang/String; = "Content-MD5"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final COPY_PART_RANGE:Ljava/lang/String; = "x-cos-copy-source-range"

.field public static final COPY_SOURCE_IF_MATCH:Ljava/lang/String; = "x-cos-copy-source-if-match"

.field public static final COPY_SOURCE_IF_MODIFIED_SINCE:Ljava/lang/String; = "x-cos-copy-source-if-modified-since"

.field public static final COPY_SOURCE_IF_NO_MATCH:Ljava/lang/String; = "x-cos-copy-source-if-none-match"

.field public static final COPY_SOURCE_IF_UNMODIFIED_SINCE:Ljava/lang/String; = "x-cos-copy-source-if-unmodified-since"

.field public static final COPY_SOURCE_SERVER_SIDE_ENCRYPTION_CUSTOMER_ALGORITHM:Ljava/lang/String; = "x-cos-copy-source-server-side-encryption-customer-algorithm"

.field public static final COPY_SOURCE_SERVER_SIDE_ENCRYPTION_CUSTOMER_KEY:Ljava/lang/String; = "x-cos-copy-source-server-side-encryption-customer-key"

.field public static final COPY_SOURCE_SERVER_SIDE_ENCRYPTION_CUSTOMER_KEY_MD5:Ljava/lang/String; = "x-cos-copy-source-server-side-encryption-customer-key-MD5"

.field public static final COS_ALTERNATE_DATE:Ljava/lang/String; = "x-cos-date"

.field public static final COS_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final COS_BUCKET_REGION:Ljava/lang/String; = "x-cos-bucket-region"

.field public static final COS_CANNED_ACL:Ljava/lang/String; = "x-cos-acl"

.field public static final COS_HASH_CRC64_ECMA:Ljava/lang/String; = "x-cos-hash-crc64ecma"

.field public static final COS_PREFIX:Ljava/lang/String; = "x-cos-"

.field public static final COS_TRAFFIC_LIMIT:Ljava/lang/String; = "x-cos-traffic-limit"

.field public static final COS_USER_METADATA_PREFIX:Ljava/lang/String; = "x-cos-meta-"

.field public static final COS_VERSION_ID:Ljava/lang/String; = "x-cos-version-id"

.field public static final CRYPTO_CEK_ALGORITHM:Ljava/lang/String; = "x-cos-meta-client-side-encryption-cek-alg"

.field public static final CRYPTO_INSTRUCTION_FILE:Ljava/lang/String; = "x-cos-crypto-instr-file"

.field public static final CRYPTO_IV:Ljava/lang/String; = "x-cos-meta-client-side-encryption-start"

.field public static final CRYPTO_KEY:Ljava/lang/String; = "x-cos-meta-client-side-encryption-key"

.field public static final CRYPTO_KEYWRAP_ALGORITHM:Ljava/lang/String; = "x-cos-meta-client-side-encryption-wrap-alg"

.field public static final CRYPTO_KEY_V2:Ljava/lang/String; = "x-cos-meta-client-side-encryption-key"

.field public static final CRYPTO_TAG_LENGTH:Ljava/lang/String; = "x-cos-tag-len"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final DELETE_MARKER:Ljava/lang/String; = "x-cos-delete-marker"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final EXPIRATION:Ljava/lang/String; = "x-cos-expiration"

.field public static final EXPIRES:Ljava/lang/String; = "Expires"

.field public static final GET_OBJECT_IF_MATCH:Ljava/lang/String; = "If-Match"

.field public static final GET_OBJECT_IF_MODIFIED_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final GET_OBJECT_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final GET_OBJECT_IF_UNMODIFIED_SINCE:Ljava/lang/String; = "If-Unmodified-Since"

.field public static final HOST:Ljava/lang/String; = "Host"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final MATERIALS_DESCRIPTION:Ljava/lang/String; = "x-cos-meta-client-side-encryption-matdesc"

.field public static final METADATA_DIRECTIVE:Ljava/lang/String; = "x-cos-metadata-directive"

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final REDIRECT_LOCATION:Ljava/lang/String; = "x-cos-website-redirect-location"

.field public static final REQUEST_ID:Ljava/lang/String; = "x-cos-request-id"

.field public static final RESTORE:Ljava/lang/String; = "x-cos-restore"

.field public static final SDK_LOG_DEBUG:Ljava/lang/String; = "x-cos-sdk-log-debug"

.field public static final SECURITY_TOKEN:Ljava/lang/String; = "x-cos-security-token"

.field public static final SERVER:Ljava/lang/String; = "Server"

.field public static final SERVER_SIDE_ENCRYPTION:Ljava/lang/String; = "x-cos-server-side-encryption"

.field public static final SERVER_SIDE_ENCRYPTION_CONTEXT:Ljava/lang/String; = "x-cos-server-side-encryption-context"

.field public static final SERVER_SIDE_ENCRYPTION_COS_KMS_KEY_ID:Ljava/lang/String; = "x-cos-server-side-encryption-cos-kms-key-id"

.field public static final SERVER_SIDE_ENCRYPTION_CUSTOMER_ALGORITHM:Ljava/lang/String; = "x-cos-server-side-encryption-customer-algorithm"

.field public static final SERVER_SIDE_ENCRYPTION_CUSTOMER_KEY:Ljava/lang/String; = "x-cos-server-side-encryption-customer-key"

.field public static final SERVER_SIDE_ENCRYPTION_CUSTOMER_KEY_MD5:Ljava/lang/String; = "x-cos-server-side-encryption-customer-key-MD5"

.field public static final SERVER_SIDE_ENCRYPTION_QCLOUD_KMS_KEYID:Ljava/lang/String; = "x-cos-server-side-encryption-qcloud-kms-key-id"

.field public static final STORAGE_CLASS:Ljava/lang/String; = "x-cos-storage-class"

.field public static final TRACE_ID:Ljava/lang/String; = "x-cos-trace-id"

.field public static final UNENCRYPTED_CONTENT_LENGTH:Ljava/lang/String; = "x-cos-meta-client-side-encryption-unencrypted-content-length"

.field public static final UNENCRYPTED_CONTENT_MD5:Ljava/lang/String; = "x-cos-meta-client-side-encryption-unencrypted-content-md5"

.field public static final USER_AGENT:Ljava/lang/String; = "User-Agent"
