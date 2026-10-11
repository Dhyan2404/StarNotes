.class public final enum Lcom/squareup/okhttp/internal/spdy/HeadersMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/okhttp/internal/spdy/HeadersMode;

.field public static final enum HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

.field public static final enum SPDY_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

.field public static final enum SPDY_REPLY:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

.field public static final enum SPDY_SYN_STREAM:Lcom/squareup/okhttp/internal/spdy/HeadersMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const-string v1, "SPDY_SYN_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const-string v2, "SPDY_REPLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const-string v3, "SPDY_HEADERS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    const-string v4, "HTTP_20_HEADERS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/squareup/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->$VALUES:[Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/okhttp/internal/spdy/HeadersMode;
    .locals 1

    const-class v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    return-object p0
.end method

.method public static values()[Lcom/squareup/okhttp/internal/spdy/HeadersMode;
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->$VALUES:[Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    invoke-virtual {v0}, [Lcom/squareup/okhttp/internal/spdy/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public failIfHeadersAbsent()Z
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public failIfHeadersPresent()Z
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public failIfStreamAbsent()Z
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public failIfStreamPresent()Z
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
