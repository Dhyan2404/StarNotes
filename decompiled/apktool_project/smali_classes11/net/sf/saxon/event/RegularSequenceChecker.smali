.class public Lnet/sf/saxon/event/RegularSequenceChecker;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/event/RegularSequenceChecker$Transition;,
        Lnet/sf/saxon/event/RegularSequenceChecker$State;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/event/RegularSequenceChecker$State;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/event/RegularSequenceChecker$Transition;",
            "Lnet/sf/saxon/event/RegularSequenceChecker$State;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final synthetic i:Z


# instance fields
.field public final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/event/RegularSequenceChecker;->h:Ljava/util/Map;

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->INITIAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    sget-object v2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->APPEND:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-static {v2, v0, v2}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->TEXT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-static {v2, v0, v2}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->COMMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-static {v2, v1, v2}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v3, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->PI:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-static {v2, v3, v2}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v4, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->START_DOCUMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    sget-object v5, Lnet/sf/saxon/event/RegularSequenceChecker$State;->CONTENT:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    invoke-static {v2, v4, v5}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v4, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->START_ELEMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-static {v2, v4, v5}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    invoke-static {v5, v0, v5}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    invoke-static {v5, v1, v5}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    invoke-static {v5, v3, v5}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    invoke-static {v5, v4, v5}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->END_ELEMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-static {v5, v0, v5}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->END_DOCUMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-static {v5, v0, v2}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->CLOSE:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FINAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    invoke-static {v2, v0, v1}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    invoke-static {v1, v0, v1}, Lnet/sf/saxon/event/RegularSequenceChecker;->d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/Receiver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->g:Z

    sget-object p1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->INITIAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-boolean p2, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->g:Z

    return-void
.end method

.method public static synthetic c(Lnet/sf/saxon/event/RegularSequenceChecker$State;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/event/RegularSequenceChecker;->e(Lnet/sf/saxon/event/RegularSequenceChecker$State;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lnet/sf/saxon/event/RegularSequenceChecker$State;Lnet/sf/saxon/event/RegularSequenceChecker$Transition;Lnet/sf/saxon/event/RegularSequenceChecker$State;)V
    .locals 2

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker;->h:Ljava/util/Map;

    new-instance v1, Lcom/sunia/HTREnginev2/pjl;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/pjl;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/event/RegularSequenceChecker$State;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->APPEND:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p2, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw p1
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->TEXT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Zero-length text nodes not allowed within document/element content"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p2, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw p1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FINAL:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-eq v0, v1, :cond_1

    sget-object v2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V

    iput-object v1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unclosed element or document nodes at end of stream"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->COMMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p2, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw p1
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->END_DOCUMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unmatched endDocument() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->END_ELEMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endElement()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unmatched endElement() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V
    .locals 3

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker;->h:Ljava/util/Map;

    iget-object v1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not permitted in state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->OPEN:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v1, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->PI:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p2, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw p1
.end method

.method public startDocument(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->START_DOCUMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw p1
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    sget-object v0, Lnet/sf/saxon/event/RegularSequenceChecker$Transition;->START_ELEMENT:Lnet/sf/saxon/event/RegularSequenceChecker$Transition;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/RegularSequenceChecker;->f(Lnet/sf/saxon/event/RegularSequenceChecker$Transition;)V

    iget-object v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->e:Ljava/util/Stack;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->g:Z

    if-eqz v0, :cond_7

    invoke-interface {p3}, Lnet/sf/saxon/om/AttributeMap;->verify()V

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "}"

    const-string v3, "Prefix "

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "URI of element Q{"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match declared default namespace {"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p4, v0}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/AttributeInfo;

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Lnet/sf/saxon/om/NamespaceMap;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is bound to the wrong namespace {"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has not been declared for attribute "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeName;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is bound to the wrong namespace"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has not been declared"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/event/ProxyReceiver;->nextReceiver:Lnet/sf/saxon/event/Receiver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lnet/sf/saxon/event/RegularSequenceChecker$State;->FAILED:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    iput-object p2, p0, Lnet/sf/saxon/event/RegularSequenceChecker;->f:Lnet/sf/saxon/event/RegularSequenceChecker$State;

    throw p1
.end method
