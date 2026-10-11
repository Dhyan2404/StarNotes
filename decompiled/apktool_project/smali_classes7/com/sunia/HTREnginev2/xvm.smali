.class public abstract Lcom/sunia/HTREnginev2/xvm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xvm;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/text/Spannable;Lcom/onegravity/rteditor/utils/Selection;Lcom/onegravity/rteditor/effects/SpanCollectMode;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Lcom/onegravity/rteditor/utils/Selection;",
            "Lcom/onegravity/rteditor/effects/SpanCollectMode;",
            ")",
            "Ljava/util/List<",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public final b(Landroid/text/Spannable;II)[Lcom/onegravity/rteditor/spans/RTSpan;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "II)[",
            "Lcom/onegravity/rteditor/spans/RTSpan<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xvm;->a:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/onegravity/rteditor/spans/RTSpan;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xvm;->a:Ljava/lang/Class;

    const/4 p1, 0x0

    new-array p1, p1, [I

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, [Lcom/onegravity/rteditor/spans/RTSpan;

    :cond_0
    return-object p1
.end method

.method public final varargs c(I[I)Z
    .locals 4

    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p2, v1

    and-int v3, p1, v2

    if-ne v3, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
