.class public Landroidx/emoji2/text/MetadataRepo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/emoji2/text/MetadataRepo$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroidx/emoji2/text/TypefaceEmojiRasterizer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataRepo$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo$a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/emoji2/text/MetadataRepo$a;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/MetadataRepo$a;->a:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/MetadataRepo$a;

    :goto_0
    return-object p0
.end method

.method public final b()Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    return-object p0
.end method

.method public c(Landroidx/emoji2/text/TypefaceEmojiRasterizer;II)V
    .locals 2
    .param p1    # Landroidx/emoji2/text/TypefaceEmojiRasterizer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/emoji2/text/MetadataRepo$a;->a(I)Landroidx/emoji2/text/MetadataRepo$a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/emoji2/text/MetadataRepo$a;

    invoke-direct {v0}, Landroidx/emoji2/text/MetadataRepo$a;-><init>()V

    iget-object p0, p0, Landroidx/emoji2/text/MetadataRepo$a;->a:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointAt(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/emoji2/text/MetadataRepo$a;->c(Landroidx/emoji2/text/TypefaceEmojiRasterizer;II)V

    goto :goto_0

    :cond_1
    iput-object p1, v0, Landroidx/emoji2/text/MetadataRepo$a;->b:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    :goto_0
    return-void
.end method
