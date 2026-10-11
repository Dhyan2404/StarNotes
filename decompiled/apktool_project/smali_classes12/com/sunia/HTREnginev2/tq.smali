.class public final synthetic Lcom/sunia/HTREnginev2/tq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# instance fields
.field public final synthetic e:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field public final synthetic f:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

.field public final synthetic g:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/tq;->e:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/tq;->f:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/tq;->g:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    return-void
.end method


# virtual methods
.method public final write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/tq;->e:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/tq;->f:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/tq;->g:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->b(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    return-void
.end method
