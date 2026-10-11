.class public Landroidx/media/a;
.super Landroidx/media/c;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/media/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/media/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media/MediaSessionManager$b;)Z
    .locals 1
    .param p1    # Landroidx/media/MediaSessionManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/media/a;->d(Landroidx/media/MediaSessionManager$b;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroidx/media/c;->a(Landroidx/media/MediaSessionManager$b;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final d(Landroidx/media/MediaSessionManager$b;)Z
    .locals 2
    .param p1    # Landroidx/media/MediaSessionManager$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/media/c;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$b;->getPid()I

    move-result v0

    invoke-interface {p1}, Landroidx/media/MediaSessionManager$b;->getUid()I

    move-result p1

    const-string v1, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
