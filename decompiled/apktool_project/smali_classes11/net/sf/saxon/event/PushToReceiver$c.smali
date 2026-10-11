.class public Lnet/sf/saxon/event/PushToReceiver$c;
.super Lnet/sf/saxon/event/PushToReceiver$a;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/push/Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/PushToReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public f:Z

.field public final synthetic g:Lnet/sf/saxon/event/PushToReceiver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PushToReceiver;Lnet/sf/saxon/event/ComplexContentOutputter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PushToReceiver$c;->g:Lnet/sf/saxon/event/PushToReceiver;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/event/PushToReceiver$a;-><init>(Lnet/sf/saxon/event/PushToReceiver;Lnet/sf/saxon/event/ComplexContentOutputter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$c;->e()V

    if-eqz p2, :cond_0

    .line 7
    :try_start_0
    new-instance v1, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v1, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public attribute(Lnet/sf/saxon/s9api/QName;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$c;->e()V

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->a()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public bridge synthetic comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$c;->comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object p0

    return-object p0
.end method

.method public comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$c;->f:Z

    .line 3
    invoke-super {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$a;->comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/push/Element;

    return-object p0
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-boolean p0, p0, Lnet/sf/saxon/event/PushToReceiver$c;->f:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string v0, "Attribute nodes must be attached to an element before any children"

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public element(Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$c;->f:Z

    .line 4
    invoke-super {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$a;->element(Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object p0

    return-object p0
.end method

.method public element(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/push/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$c;->f:Z

    .line 2
    invoke-super {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$a;->element(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object p0

    return-object p0
.end method

.method public namespace(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$c;->e()V

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public bridge synthetic processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/event/PushToReceiver$c;->processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object p0

    return-object p0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$c;->f:Z

    .line 3
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/event/PushToReceiver$a;->processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/push/Element;

    return-object p0
.end method

.method public bridge synthetic text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$c;->text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Element;

    move-result-object p0

    return-object p0
.end method

.method public text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$c;->f:Z

    .line 3
    invoke-super {p0, p1}, Lnet/sf/saxon/event/PushToReceiver$a;->text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/push/Element;

    return-object p0
.end method
