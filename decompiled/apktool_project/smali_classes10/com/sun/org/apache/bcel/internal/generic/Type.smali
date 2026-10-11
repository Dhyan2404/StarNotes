.class public abstract Lcom/sun/org/apache/bcel/internal/generic/Type;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field public static final BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field public static final CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field public static final DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field public static final FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field public static final INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field public static final LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field public static final NO_ARGS:[Lcom/sun/org/apache/bcel/internal/generic/Type;

.field public static final NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

.field public static final OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

.field public static final SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field public static final STRING:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

.field public static final STRINGBUFFER:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

.field public static final THROWABLE:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

.field public static final UNKNOWN:Lcom/sun/org/apache/bcel/internal/generic/Type;

.field public static final VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

.field private static consumed_chars:I


# instance fields
.field protected signature:Ljava/lang/String;

.field protected type:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;-><init>(B)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v1, "java.lang.Object"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->OBJECT:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v1, "java.lang.String"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRING:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v1, "java.lang.StringBuffer"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->STRINGBUFFER:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const-string v1, "java.lang.Throwable"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->THROWABLE:Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    sput-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->NO_ARGS:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/Type$1;

    invoke-direct {v1}, Lcom/sun/org/apache/bcel/internal/generic/Type$1;-><init>()V

    sput-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/Type$2;

    const/16 v2, 0xf

    const-string v3, "<unknown object>"

    invoke-direct {v1, v2, v3}, Lcom/sun/org/apache/bcel/internal/generic/Type$2;-><init>(BLjava/lang/String;)V

    sput-object v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->UNKNOWN:Lcom/sun/org/apache/bcel/internal/generic/Type;

    sput v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->consumed_chars:I

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->type:B

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->signature:Ljava/lang/String;

    return-void
.end method

.method public static getArgumentTypes(Ljava/lang/String;)[Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 5

    const-string v0, "Invalid method signature: "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v3, Lcom/sun/org/apache/bcel/internal/generic/Type;->consumed_chars:I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/org/apache/bcel/internal/generic/Type;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v1, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getMethodSignature(Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReturnType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 3

    const/16 v0, 0x29

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid method signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 5
    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/Class;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/Class;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/lang/Class;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 3

    if-eqz p0, :cond_c

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 17
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->INT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 18
    :cond_1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 19
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->VOID:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 20
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 21
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->DOUBLE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 22
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 23
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->FLOAT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 24
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 25
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BOOLEAN:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 26
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 27
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 28
    :cond_6
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    .line 29
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->SHORT:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    :cond_7
    if-ne p0, v0, :cond_8

    .line 30
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->BYTE:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 31
    :cond_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_9

    .line 32
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->LONG:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 33
    :cond_9
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    .line 34
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->CHAR:Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    return-object p0

    .line 35
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ooops, what primitive type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_b
    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 37
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Class must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/StringIndexOutOfBoundsException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->typeOfSignature(Ljava/lang/String;)B

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    .line 3
    sput v2, Lcom/sun/org/apache/bcel/internal/generic/Type;->consumed_chars:I

    .line 4
    invoke-static {v0}, Lcom/sun/org/apache/bcel/internal/generic/BasicType;->getType(B)Lcom/sun/org/apache/bcel/internal/generic/BasicType;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_1
    add-int/2addr v0, v2

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/bcel/internal/generic/Type;->getType(Ljava/lang/String;)Lcom/sun/org/apache/bcel/internal/generic/Type;

    move-result-object p0

    .line 7
    sget v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->consumed_chars:I

    add-int/2addr v1, v0

    sput v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->consumed_chars:I

    .line 8
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/bcel/internal/generic/ArrayType;-><init>(Lcom/sun/org/apache/bcel/internal/generic/Type;I)V

    return-object v1

    :cond_2
    const/16 v0, 0x3b

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 10
    sput v1, Lcom/sun/org/apache/bcel/internal/generic/Type;->consumed_chars:I

    .line 11
    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/sun/org/apache/bcel/internal/generic/ObjectType;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 12
    :cond_3
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSignature()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 1

    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->type:B

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public getType()B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->type:B

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sun/org/apache/bcel/internal/generic/Type;->NULL:Lcom/sun/org/apache/bcel/internal/generic/ReferenceType;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->type:B

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->signature:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/Type;->signature:Ljava/lang/String;

    :goto_1
    return-object p0
.end method
