.class public final Lcom/couchbase/lite/CBLError$Code;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/CBLError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Code"
.end annotation


# static fields
.field public static final ASSERTION_FAILED:I = 0x1

.field public static final BAD_DOC_ID:I = 0x1d

.field public static final BAD_REVISION_ID:I = 0x4

.field public static final BUSY:I = 0x10

.field public static final CANT_OPEN_FILE:I = 0xb

.field public static final CANT_UPGRADE_DATABASE:I = 0x1e

.field public static final CONFLICT:I = 0x8

.field public static final CORRUPT_DATA:I = 0xf

.field public static final CORRUPT_REVISION_DATA:I = 0x5

.field public static final CRYPTO:I = 0x16

.field public static final DATABASE_TOO_NEW:I = 0x1c

.field public static final DATABASE_TOO_OLD:I = 0x1b

.field public static final DNS_FAILURE:I = 0x1389

.field public static final HTTP_AUTH_REQUIRED:I = 0x28a1

.field public static final HTTP_BASE:I = 0x2710

.field public static final HTTP_CONFLICT:I = 0x28a9

.field public static final HTTP_ENTITY_TOO_LARGE:I = 0x28ad

.field public static final HTTP_FORBIDDEN:I = 0x28a3

.field public static final HTTP_IM_A_TEAPOT:I = 0x28b2

.field public static final HTTP_INTERNAL_SERVER_ERROR:I = 0x2904

.field public static final HTTP_NOT_FOUND:I = 0x28a4

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x2905

.field public static final HTTP_PROXY_AUTH_REQUIRED:I = 0x28a7

.field public static final HTTP_SERVICE_UNAVAILABLE:I = 0x2907

.field public static final INVALID_PARAMETER:I = 0x9

.field public static final INVALID_QUERY:I = 0x17

.field public static final INVALID_QUERY_PARAM:I = 0x19

.field public static final INVALID_REDIRECT:I = 0x1394

.field public static final INVALID_URL:I = 0x138c

.field public static final IO_ERROR:I = 0xc

.field public static final MEMORY_ERROR:I = 0xd

.field public static final MISSING_INDEX:I = 0x18

.field public static final NETWORK_OFFSET:I = 0x1388

.field public static final NOT_A_DATABASE_FILE:I = 0x14

.field public static final NOT_FOUND:I = 0x7

.field public static final NOT_IN_TRANSACTION:I = 0x11

.field public static final NOT_OPEN:I = 0x6

.field public static final NOT_WRITABLE:I = 0xe

.field public static final REMOTE_ERROR:I = 0x1a

.field public static final TIMEOUT:I = 0x138b

.field public static final TLS_CERT_EXPIRED:I = 0x138f

.field public static final TLS_CERT_UNKNOWN_ROOT:I = 0x1393

.field public static final TLS_CERT_UNTRUSTED:I = 0x1390

.field public static final TLS_CLIENT_CERT_REJECTED:I = 0x1392

.field public static final TLS_CLIENT_CERT_REQUIRED:I = 0x1391

.field public static final TLS_HANDSHAKE_FAILED:I = 0x138e

.field public static final TOO_MANY_REDIRECTS:I = 0x138d

.field public static final TRANSACTION_NOT_CLOSED:I = 0x12

.field public static final UNEXPECTED_ERROR:I = 0xa

.field public static final UNIMPLEMENTED:I = 0x2

.field public static final UNKNOWN_HOST:I = 0x138a

.field public static final UNSUPPORTED:I = 0x13

.field public static final UNSUPPORTED_ENCRYPTION:I = 0x3

.field public static final WEB_SOCKET_ABNORMAL_CLOSE:I = 0x2afe

.field public static final WEB_SOCKET_BAD_MESSAGE_FORMAT:I = 0x2aff

.field public static final WEB_SOCKET_CANT_FULFILL:I = 0x2b03

.field public static final WEB_SOCKET_CLOSE_USER_PERMANENT:I = 0x36b2

.field public static final WEB_SOCKET_CLOSE_USER_TRANSIENT:I = 0x36b1

.field public static final WEB_SOCKET_DATA_ERROR:I = 0x2afb

.field public static final WEB_SOCKET_GOING_AWAY:I = 0x2af9

.field public static final WEB_SOCKET_MESSAGE_TOO_BIG:I = 0x2b01

.field public static final WEB_SOCKET_MISSING_EXTENSION:I = 0x2b02

.field public static final WEB_SOCKET_NORMAL_CLOSE:I = 0x2af8

.field public static final WEB_SOCKET_POLICY_ERROR:I = 0x2b00

.field public static final WEB_SOCKET_PROTOCOL_ERROR:I = 0x2afa

.field public static final WEB_SOCKET_TLS_FAILURE:I = 0x2b07

.field public static final WEB_SOCKET_USER:I = 0x36b0

.field public static final WRONG_FORMAT:I = 0x15


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
