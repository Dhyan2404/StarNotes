.class public final Lio/opencensus/contrib/http/util/HttpTraceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/opencensus/trace/Status;

.field public static final b:Lio/opencensus/trace/Status;

.field public static final c:Lio/opencensus/trace/Status;

.field public static final d:Lio/opencensus/trace/Status;

.field public static final e:Lio/opencensus/trace/Status;

.field public static final f:Lio/opencensus/trace/Status;

.field public static final g:Lio/opencensus/trace/Status;

.field public static final h:Lio/opencensus/trace/Status;

.field public static final i:Lio/opencensus/trace/Status;

.field public static final j:Lio/opencensus/trace/Status;

.field public static final k:Lio/opencensus/trace/Status;

.field public static final l:Lio/opencensus/trace/Status;

.field public static final m:Lio/opencensus/trace/Status;

.field public static final n:Lio/opencensus/trace/Status;

.field public static final o:Lio/opencensus/trace/Status;

.field public static final p:Lio/opencensus/trace/Status;

.field public static final q:Lio/opencensus/trace/Status;

.field public static final r:Lio/opencensus/trace/Status;

.field public static final s:Lio/opencensus/trace/Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lio/opencensus/trace/Status;->UNKNOWN:Lio/opencensus/trace/Status;

    const-string v1, "Continue"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->a:Lio/opencensus/trace/Status;

    const-string v1, "Switching Protocols"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->b:Lio/opencensus/trace/Status;

    const-string v1, "Payment Required"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->c:Lio/opencensus/trace/Status;

    const-string v1, "Method Not Allowed"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->d:Lio/opencensus/trace/Status;

    const-string v1, "Not Acceptable"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->e:Lio/opencensus/trace/Status;

    const-string v1, "Proxy Authentication Required"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->f:Lio/opencensus/trace/Status;

    const-string v1, "Request Time-out"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->g:Lio/opencensus/trace/Status;

    const-string v1, "Conflict"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->h:Lio/opencensus/trace/Status;

    const-string v1, "Gone"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->i:Lio/opencensus/trace/Status;

    const-string v1, "Length Required"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->j:Lio/opencensus/trace/Status;

    const-string v1, "Precondition Failed"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->k:Lio/opencensus/trace/Status;

    const-string v1, "Request Entity Too Large"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->l:Lio/opencensus/trace/Status;

    const-string v1, "Request-URI Too Large"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->m:Lio/opencensus/trace/Status;

    const-string v1, "Unsupported Media Type"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->n:Lio/opencensus/trace/Status;

    const-string v1, "Requested range not satisfiable"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->o:Lio/opencensus/trace/Status;

    const-string v1, "Expectation Failed"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->p:Lio/opencensus/trace/Status;

    const-string v1, "Internal Server Error"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->q:Lio/opencensus/trace/Status;

    const-string v1, "Bad Gateway"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v1

    sput-object v1, Lio/opencensus/contrib/http/util/HttpTraceUtil;->r:Lio/opencensus/trace/Status;

    const-string v1, "HTTP Version not supported"

    invoke-virtual {v0, v1}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v0

    sput-object v0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->s:Lio/opencensus/trace/Status;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseResponseStatus(ILjava/lang/Throwable;)Lio/opencensus/trace/Status;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    sget-object p0, Lio/opencensus/trace/Status;->UNKNOWN:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p1, 0xc8

    if-lt p0, p1, :cond_3

    const/16 p1, 0x190

    if-ge p0, p1, :cond_3

    sget-object p0, Lio/opencensus/trace/Status;->OK:Lio/opencensus/trace/Status;

    return-object p0

    :cond_3
    const/16 p1, 0x64

    if-eq p0, p1, :cond_6

    const/16 p1, 0x65

    if-eq p0, p1, :cond_5

    const/16 p1, 0x1ad

    if-eq p0, p1, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    sget-object p0, Lio/opencensus/trace/Status;->UNKNOWN:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->s:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_1
    sget-object p0, Lio/opencensus/trace/Status;->DEADLINE_EXCEEDED:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lio/opencensus/trace/Status;->UNAVAILABLE:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->r:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_4
    sget-object p0, Lio/opencensus/trace/Status;->UNIMPLEMENTED:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->q:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_6
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->p:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_7
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->o:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_8
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->n:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_9
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->m:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_a
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->l:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_b
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->k:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_c
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->j:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_d
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->i:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_e
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->h:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_f
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->g:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_10
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->f:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_11
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->e:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_12
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->d:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_13
    sget-object p0, Lio/opencensus/trace/Status;->NOT_FOUND:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lio/opencensus/trace/Status;->PERMISSION_DENIED:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :pswitch_15
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->c:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_16
    sget-object p0, Lio/opencensus/trace/Status;->UNAUTHENTICATED:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :pswitch_17
    sget-object p0, Lio/opencensus/trace/Status;->INVALID_ARGUMENT:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lio/opencensus/trace/Status;->RESOURCE_EXHAUSTED:Lio/opencensus/trace/Status;

    invoke-virtual {p0, v0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->b:Lio/opencensus/trace/Status;

    return-object p0

    :cond_6
    sget-object p0, Lio/opencensus/contrib/http/util/HttpTraceUtil;->a:Lio/opencensus/trace/Status;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
