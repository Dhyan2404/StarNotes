.class public final Landroidx/emoji2/text/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final i:I = 0x1

.field public static final j:I = 0x2


# instance fields
.field public a:I

.field public final b:Landroidx/emoji2/text/MetadataRepo$a;

.field public c:Landroidx/emoji2/text/MetadataRepo$a;

.field public d:Landroidx/emoji2/text/MetadataRepo$a;

.field public e:I

.field public f:I

.field public final g:Z

.field public final h:[I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/MetadataRepo$a;Z[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/b$f;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/b$f;->b:Landroidx/emoji2/text/MetadataRepo$a;

    iput-object p1, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    iput-boolean p2, p0, Landroidx/emoji2/text/b$f;->g:Z

    iput-object p3, p0, Landroidx/emoji2/text/b$f;->h:[I

    return-void
.end method

.method public static d(I)Z
    .locals 1

    const v0, 0xfe0f

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(I)Z
    .locals 1

    const v0, 0xfe0e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 4

    iget-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/MetadataRepo$a;->a(I)Landroidx/emoji2/text/MetadataRepo$a;

    move-result-object v0

    iget v1, p0, Landroidx/emoji2/text/b$f;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/emoji2/text/b$f;->g()I

    move-result v3

    goto :goto_0

    :cond_0
    iput v3, p0, Landroidx/emoji2/text/b$f;->a:I

    iput-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    iput v2, p0, Landroidx/emoji2/text/b$f;->f:I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iput-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    iget v0, p0, Landroidx/emoji2/text/b$f;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/emoji2/text/b$f;->f:I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroidx/emoji2/text/b$f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/emoji2/text/b$f;->g()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroidx/emoji2/text/b$f;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$a;->b()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/emoji2/text/b$f;->f:I

    const/4 v3, 0x3

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Landroidx/emoji2/text/b$f;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    iput-object v0, p0, Landroidx/emoji2/text/b$f;->d:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {p0}, Landroidx/emoji2/text/b$f;->g()I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/emoji2/text/b$f;->g()I

    move-result v3

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    iput-object v0, p0, Landroidx/emoji2/text/b$f;->d:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {p0}, Landroidx/emoji2/text/b$f;->g()I

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroidx/emoji2/text/b$f;->g()I

    move-result v3

    :goto_0
    iput p1, p0, Landroidx/emoji2/text/b$f;->e:I

    return v3
.end method

.method public b()Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {p0}, Landroidx/emoji2/text/MetadataRepo$a;->b()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object p0

    return-object p0
.end method

.method public c()Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/b$f;->d:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {p0}, Landroidx/emoji2/text/MetadataRepo$a;->b()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Landroidx/emoji2/text/b$f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$a;->b()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/emoji2/text/b$f;->f:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/emoji2/text/b$f;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final g()I
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/emoji2/text/b$f;->a:I

    iget-object v1, p0, Landroidx/emoji2/text/b$f;->b:Landroidx/emoji2/text/MetadataRepo$a;

    iput-object v1, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/emoji2/text/b$f;->f:I

    return v0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$a;->b()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->isDefaultEmoji()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroidx/emoji2/text/b$f;->e:I

    invoke-static {v0}, Landroidx/emoji2/text/b$f;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Landroidx/emoji2/text/b$f;->g:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/emoji2/text/b$f;->h:[I

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroidx/emoji2/text/b$f;->c:Landroidx/emoji2/text/MetadataRepo$a;

    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo$a;->b()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointAt(I)I

    move-result v0

    iget-object p0, p0, Landroidx/emoji2/text/b$f;->h:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_3

    return v1

    :cond_3
    return v2
.end method
