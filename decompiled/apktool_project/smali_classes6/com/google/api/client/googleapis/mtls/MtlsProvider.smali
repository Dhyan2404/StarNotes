.class public interface abstract Lcom/google/api/client/googleapis/mtls/MtlsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# virtual methods
.method public abstract getKeyStore()Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract getKeyStorePassword()Ljava/lang/String;
.end method

.method public abstract useMtlsClientCertificate()Z
.end method
