.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
.source "SourceFile"


# static fields
.field public static h:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;


# instance fields
.field public final b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

.field public c:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

.field public d:[[I

.field public e:[I

.field public f:I

.field public g:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xff

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->h:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->NONE:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;-><init>(I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V

    return-void
.end method

.method public constructor <init>(I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->f:I

    .line 4
    invoke-static {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->get(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->getRewriteCopy()[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->e:[I

    .line 6
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->c:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-void
.end method

.method public static getByteCode(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;
    .locals 2

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->get(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->hasNoOperand()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->h:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    aget-object v1, v0, p0

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;-><init>(I)V

    aput-object v1, v0, p0

    :cond_0
    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->h:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public applyByteCodeTargetFixup(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->fixUpByteCodeTargets(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;)V

    return-void
.end method

.method public doWrite(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->e:[I

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public extractOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;Lorg/apache/commons/compress/harmony/unpack200/Segment;I)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->setByteCodeOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V

    return-void
.end method

.method public getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    return-object p0
.end method

.method public getByteCodeIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->f:I

    return p0
.end method

.method public getByteCodeTargets()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->g:[I

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->e:[I

    array-length p0, p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->c:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-object p0
.end method

.method public getNestedPosition(I)[I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getNestedPositions()[[I

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getNestedPositions()[[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->d:[[I

    return-object p0
.end method

.method public getOpcode()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->getOpcode()I

    move-result p0

    return p0
.end method

.method public getRewrite()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->e:[I

    return-object p0
.end method

.method public hasMultipleByteCodes()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->hasMultipleByteCodes()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->objectHashCode()I

    move-result p0

    return p0
.end method

.method public nestedMustStartClassPool()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->nestedMustStartClassPool()Z

    move-result p0

    return p0
.end method

.method public resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->c:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->c:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getNestedPosition(I)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->c:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v2

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getNestedPosition(I)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setOperand2Bytes(II)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled resolve "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->c:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v2

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getNestedPosition(I)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setOperandByte(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setByteCodeIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->f:I

    return-void
.end method

.method public setByteCodeTargets([I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->g:[I

    return-void
.end method

.method public setNested([Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->c:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-void
.end method

.method public setNestedPositions([[I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->d:[[I

    return-void
.end method

.method public setOperand2Bytes(II)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->firstOperandIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->getRewrite()[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    const-string v3, "Trying to rewrite "

    if-lt v0, v2, :cond_1

    add-int/2addr v0, p2

    add-int/lit8 v2, v0, 0x1

    if-gt v2, v1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->e:[I

    const p2, 0xff00

    and-int/2addr p2, p1

    shr-int/lit8 p2, p2, 0x8

    aput p2, p0, v0

    and-int/lit16 p1, p1, 0xff

    aput p1, p0, v2

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with an int at position "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but this won\'t fit in the rewrite array"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " that has no rewrite"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOperandByte(II)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->firstOperandIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->operandLength()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Trying to rewrite "

    if-lt v0, v2, :cond_1

    add-int/2addr v0, p2

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->e:[I

    and-int/lit16 p1, p1, 0xff

    aput p1, p0, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " with an byte at position "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but this won\'t fit in the rewrite array"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " that has no rewrite"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOperandBytes([I)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->firstOperandIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->operandLength()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Trying to rewrite "

    if-lt v0, v2, :cond_2

    array-length v2, p1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->e:[I

    add-int v4, v2, v0

    aget v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but bytecode has length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->b:Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->operandLength()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/Error;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " that has no rewrite"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOperandSigned2Bytes(II)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setOperand2Bytes(II)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setOperand2Bytes(II)V

    :goto_0
    return-void
.end method

.method public setRewrite([I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->e:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCodeForm()Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ByteCodeForm;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
