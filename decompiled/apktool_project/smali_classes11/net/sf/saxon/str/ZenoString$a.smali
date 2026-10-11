.class public Lnet/sf/saxon/str/ZenoString$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/str/ZenoString;->codePoints()Lnet/sf/saxon/z/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/sf/saxon/str/UnicodeString;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lnet/sf/saxon/z/IntIterator;

.field public final synthetic c:Lnet/sf/saxon/str/ZenoString;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/ZenoString;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/str/ZenoString$a;->c:Lnet/sf/saxon/str/ZenoString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lnet/sf/saxon/str/ZenoString;->e(Lnet/sf/saxon/str/ZenoString;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/str/ZenoString$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString$a;->b:Lnet/sf/saxon/z/IntIterator;

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString$a;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/str/ZenoString$a;->b:Lnet/sf/saxon/z/IntIterator;

    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString$a;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString$a;->b:Lnet/sf/saxon/z/IntIterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/str/ZenoString$a;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/str/ZenoString$a;->b:Lnet/sf/saxon/z/IntIterator;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/str/ZenoString$a;->b:Lnet/sf/saxon/z/IntIterator;

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p0

    return p0
.end method
