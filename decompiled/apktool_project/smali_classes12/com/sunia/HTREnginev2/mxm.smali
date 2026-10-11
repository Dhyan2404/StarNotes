.class public final synthetic Lcom/sunia/HTREnginev2/mxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# instance fields
.field public final synthetic e:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field public final synthetic f:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

.field public final synthetic g:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mxm;->e:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/mxm;->f:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/mxm;->g:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    return-void
.end method


# virtual methods
.method public final write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mxm;->e:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mxm;->f:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mxm;->g:Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->b(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void
.end method
