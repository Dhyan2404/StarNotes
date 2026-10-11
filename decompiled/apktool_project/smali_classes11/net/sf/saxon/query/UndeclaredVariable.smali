.class public Lnet/sf/saxon/query/UndeclaredVariable;
.super Lnet/sf/saxon/expr/instruct/GlobalVariable;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/instruct/GlobalVariable;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lnet/sf/saxon/expr/instruct/Executable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to compile a place-holder for an undeclared variable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public transferReferences(Lnet/sf/saxon/expr/instruct/GlobalVariable;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/expr/BindingReference;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->registerReference(Lnet/sf/saxon/expr/BindingReference;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/instruct/GlobalVariable;->references:Ljava/util/List;

    return-void
.end method
