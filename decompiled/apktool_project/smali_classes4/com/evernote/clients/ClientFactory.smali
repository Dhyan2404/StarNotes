.class public Lcom/evernote/clients/ClientFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "User-Agent"

.field public static final e:Ljava/util/regex/Pattern;


# instance fields
.field public a:Lcom/evernote/auth/EvernoteAuth;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ":A=([^:]+):"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/evernote/clients/ClientFactory;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/evernote/auth/EvernoteAuth;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/evernote/clients/ClientFactory;->a:Lcom/evernote/auth/EvernoteAuth;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    const-class v0, Lcom/evernote/thrift/protocol/TProtocol;

    new-instance v1, Lcom/evernote/thrift/transport/THttpClient;

    invoke-direct {v1, p2}, Lcom/evernote/thrift/transport/THttpClient;-><init>(Ljava/lang/String;)V

    const-string p2, "User-Agent"

    invoke-virtual {p0}, Lcom/evernote/clients/ClientFactory;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/evernote/thrift/transport/THttpClient;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/evernote/clients/ClientFactory;->c:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/evernote/thrift/transport/THttpClient;->setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/evernote/thrift/protocol/TBinaryProtocol;

    invoke-direct {p0, v1}, Lcom/evernote/thrift/protocol/TBinaryProtocol;-><init>(Lcom/evernote/thrift/transport/TTransport;)V

    const/4 p2, 0x3

    :try_start_0
    new-array p2, p2, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    filled-new-array {p0, p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t create "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to the error."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/evernote/clients/ClientFactory;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/evernote/clients/ClientFactory;->e:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/evernote/clients/ClientFactory;->a:Lcom/evernote/auth/EvernoteAuth;

    invoke-virtual {v1}, Lcom/evernote/auth/EvernoteAuth;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "1.25"

    :cond_2
    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; Java / "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createBusinessNoteStoreClient()Lcom/evernote/clients/BusinessNoteStoreClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/ClientFactory;->createNoteStoreClient()Lcom/evernote/clients/NoteStoreClient;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/clients/ClientFactory;->createUserStoreClient()Lcom/evernote/clients/UserStoreClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/clients/UserStoreClient;->authenticateToBusiness()Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/evernote/clients/NoteStoreClient;

    invoke-virtual {p0, v4, v2, v3}, Lcom/evernote/clients/ClientFactory;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/clients/NoteStoreClient;

    new-instance v2, Lcom/evernote/clients/BusinessNoteStoreClient;

    invoke-direct {v2, v0, p0, v1}, Lcom/evernote/clients/BusinessNoteStoreClient;-><init>(Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/edam/userstore/AuthenticationResult;)V

    return-object v2
.end method

.method public createLinkedNoteStoreClient(Lcom/evernote/edam/type/LinkedNotebook;)Lcom/evernote/clients/LinkedNoteStoreClient;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;,
            Lcom/evernote/edam/error/EDAMNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/evernote/clients/ClientFactory;->createNoteStoreClient()Lcom/evernote/clients/NoteStoreClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getShareKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/clients/NoteStoreClient;->authenticateToSharedNotebook(Ljava/lang/String;)Lcom/evernote/edam/userstore/AuthenticationResult;

    move-result-object v1

    invoke-virtual {p1}, Lcom/evernote/edam/type/LinkedNotebook;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/evernote/edam/userstore/AuthenticationResult;->getAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/evernote/clients/NoteStoreClient;

    invoke-virtual {p0, v3, p1, v2}, Lcom/evernote/clients/ClientFactory;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/clients/NoteStoreClient;

    new-instance p1, Lcom/evernote/clients/LinkedNoteStoreClient;

    invoke-direct {p1, v0, p0, v1}, Lcom/evernote/clients/LinkedNoteStoreClient;-><init>(Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/clients/NoteStoreClient;Lcom/evernote/edam/userstore/AuthenticationResult;)V

    return-object p1
.end method

.method public createNoteStoreClient()Lcom/evernote/clients/NoteStoreClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/edam/error/EDAMUserException;,
            Lcom/evernote/edam/error/EDAMSystemException;,
            Lcom/evernote/thrift/TException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/clients/ClientFactory;->a:Lcom/evernote/auth/EvernoteAuth;

    invoke-virtual {v0}, Lcom/evernote/auth/EvernoteAuth;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/evernote/clients/ClientFactory;->createUserStoreClient()Lcom/evernote/clients/UserStoreClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/clients/UserStoreClient;->getNoteStoreUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/clients/ClientFactory;->a:Lcom/evernote/auth/EvernoteAuth;

    invoke-virtual {v1, v0}, Lcom/evernote/auth/EvernoteAuth;->setNoteStoreUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/evernote/clients/ClientFactory;->a:Lcom/evernote/auth/EvernoteAuth;

    invoke-virtual {v1}, Lcom/evernote/auth/EvernoteAuth;->getToken()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/evernote/clients/NoteStoreClient;

    invoke-virtual {p0, v2, v0, v1}, Lcom/evernote/clients/ClientFactory;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/clients/NoteStoreClient;

    return-object p0
.end method

.method public createUserStoreClient()Lcom/evernote/clients/UserStoreClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evernote/thrift/transport/TTransportException;
        }
    .end annotation

    iget-object v0, p0, Lcom/evernote/clients/ClientFactory;->a:Lcom/evernote/auth/EvernoteAuth;

    invoke-virtual {v0}, Lcom/evernote/auth/EvernoteAuth;->getUserStoreUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/clients/ClientFactory;->a:Lcom/evernote/auth/EvernoteAuth;

    invoke-virtual {v1}, Lcom/evernote/auth/EvernoteAuth;->getToken()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/evernote/clients/UserStoreClient;

    invoke-virtual {p0, v2, v0, v1}, Lcom/evernote/clients/ClientFactory;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/evernote/clients/UserStoreClient;

    return-object p0
.end method

.method public setCustomHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/evernote/clients/ClientFactory;->c:Ljava/util/Map;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/evernote/clients/ClientFactory;->b:Ljava/lang/String;

    return-void
.end method
