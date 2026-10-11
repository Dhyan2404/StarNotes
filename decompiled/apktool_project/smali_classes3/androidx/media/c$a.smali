.class public Landroidx/media/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/MediaSessionManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "pid",
            "uid"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media/c$a;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/media/c$a;->b:I

    iput p3, p0, Landroidx/media/c$a;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media/c$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media/c$a;

    iget v1, p0, Landroidx/media/c$a;->b:I

    if-ltz v1, :cond_4

    iget v1, p1, Landroidx/media/c$a;->b:I

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroidx/media/c$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media/c$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/media/c$a;->b:I

    iget v3, p1, Landroidx/media/c$a;->b:I

    if-ne v1, v3, :cond_3

    iget p0, p0, Landroidx/media/c$a;->c:I

    iget p1, p1, Landroidx/media/c$a;->c:I

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    :cond_4
    :goto_1
    iget-object v1, p0, Landroidx/media/c$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media/c$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget p0, p0, Landroidx/media/c$a;->c:I

    iget p1, p1, Landroidx/media/c$a;->c:I

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media/c$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    iget p0, p0, Landroidx/media/c$a;->b:I

    return p0
.end method

.method public getUid()I
    .locals 0

    iget p0, p0, Landroidx/media/c$a;->c:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media/c$a;->a:Ljava/lang/String;

    iget p0, p0, Landroidx/media/c$a;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
