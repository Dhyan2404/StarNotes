.class public abstract Lnet/sf/saxon/event/PushToReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/push/Container;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/PushToReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/event/ComplexContentOutputter;

.field public b:Ljava/lang/String;

.field public c:Lnet/sf/saxon/event/PushToReceiver$c;

.field public d:Z

.field public final synthetic e:Lnet/sf/saxon/event/PushToReceiver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/PushToReceiver;Lnet/sf/saxon/event/ComplexContentOutputter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PushToReceiver$a;->e:Lnet/sf/saxon/event/PushToReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lnet/sf/saxon/event/PushToReceiver$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/event/PushToReceiver$a;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    return-void
.end method


# virtual methods
.method public a()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/Outputter;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public b()Lnet/sf/saxon/event/ComplexContentOutputter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    return-object p0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->c:Lnet/sf/saxon/event/PushToReceiver$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PushToReceiver$a;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->c:Lnet/sf/saxon/event/PushToReceiver$c;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string v0, "The container has been closed"

    invoke-direct {p0, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->c()V

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->d:Z

    :cond_0
    return-void
.end method

.method public comment(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->c()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract d()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public element(Ljava/lang/String;)Lnet/sf/saxon/s9api/push/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->c()V

    .line 8
    iget-object v0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/om/NoNamespaceName;

    invoke-direct {v0, p1}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v1, ""

    iget-object v2, p0, Lnet/sf/saxon/event/PushToReceiver$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/event/PushToReceiver$a;->a:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    new-instance p1, Lnet/sf/saxon/event/PushToReceiver$c;

    iget-object v0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->e:Lnet/sf/saxon/event/PushToReceiver;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/event/PushToReceiver$a;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lnet/sf/saxon/event/PushToReceiver$c;-><init>(Lnet/sf/saxon/event/PushToReceiver;Lnet/sf/saxon/event/ComplexContentOutputter;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/event/PushToReceiver$a;->c:Lnet/sf/saxon/event/PushToReceiver$c;

    return-object p1

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public element(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/push/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->c()V

    .line 2
    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->a()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/NamePool;)V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object p1

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance p1, Lnet/sf/saxon/event/PushToReceiver$c;

    iget-object v0, p0, Lnet/sf/saxon/event/PushToReceiver$a;->e:Lnet/sf/saxon/event/PushToReceiver;

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/event/PushToReceiver$a;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lnet/sf/saxon/event/PushToReceiver$c;-><init>(Lnet/sf/saxon/event/PushToReceiver;Lnet/sf/saxon/event/ComplexContentOutputter;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/sf/saxon/event/PushToReceiver$a;->c:Lnet/sf/saxon/event/PushToReceiver$c;

    return-object p1

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->c()V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/event/PushToReceiver$a;->b:Ljava/lang/String;

    return-void
.end method

.method public text(Ljava/lang/CharSequence;)Lnet/sf/saxon/s9api/push/Container;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->c()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/PushToReceiver$a;->b()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
