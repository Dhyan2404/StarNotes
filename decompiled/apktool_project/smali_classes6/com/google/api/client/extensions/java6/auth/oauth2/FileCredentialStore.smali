.class public Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/auth/oauth2/CredentialStore;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final IS_WINDOWS:Z

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

.field private final file:Ljava/io/File;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->LOGGER:Ljava/util/logging/Logger;

    sget-char v0, Ljava/io/File;->separatorChar:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->IS_WINDOWS:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/api/client/json/JsonFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-direct {v0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->file:Ljava/io/File;

    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/api/client/json/JsonFactory;

    iput-object p2, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x23

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unable to create parent directory: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->isSymbolicLink(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->loadCredentials(Ljava/io/File;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, p2}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, p2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    sget-object p2, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->LOGGER:Ljava/util/logging/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unable to change file permissions for everybody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/io/File;->setReadable(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p2}, Ljava/io/File;->setWritable(Z)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->save()V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unable to set file permissions: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unable to use a symbolic link: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private loadCredentials(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    const-class v1, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/json/JsonFactory;->fromInputStream(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    iput-object p1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method private save()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    sget-object v2, Lcom/google/api/client/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v2}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v1

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {v1, p0}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/api/client/json/JsonGenerator;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p2, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {p2, p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->delete(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public isSymbolicLink(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->IS_WINDOWS:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, p0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public load(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->load(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final migrateTo(Lcom/google/api/client/util/store/DataStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/util/store/DataStore<",
            "Lcom/google/api/client/auth/oauth2/StoredCredential;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {p0, p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->migrateTo(Lcom/google/api/client/util/store/DataStore;)V

    return-void
.end method

.method public final migrateTo(Lcom/google/api/client/util/store/FileDataStoreFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/api/client/auth/oauth2/StoredCredential;->getDefaultDataStore(Lcom/google/api/client/util/store/DataStoreFactory;)Lcom/google/api/client/util/store/DataStore;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->migrateTo(Lcom/google/api/client/util/store/DataStore;)V

    return-void
.end method

.method public store(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->credentials:Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;

    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/extensions/java6/auth/oauth2/FilePersistedCredentials;->store(Ljava/lang/String;Lcom/google/api/client/auth/oauth2/Credential;)V

    invoke-direct {p0}, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/api/client/extensions/java6/auth/oauth2/FileCredentialStore;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
