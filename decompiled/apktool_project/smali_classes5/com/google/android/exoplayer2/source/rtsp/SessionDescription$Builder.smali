.class public final Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->b:Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->c:I

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->b:Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->g:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic k(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->c:I

    return p0
.end method

.method public static synthetic l(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addMediaDescription(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->b:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;-><init>(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$a;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "One of more mandatory SDP fields are not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBitrate(I)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->c:I

    return-object p0
.end method

.method public setConnection(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setOrigin(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionInfo(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method public setSessionName(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setTiming(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->g:Landroid/net/Uri;

    return-object p0
.end method
