.class public Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/harmony/unpack200/IMatcher;


# static fields
.field public static final ACC_ABSTRACT:Ljava/lang/String; = "ACC_ABSTRACT"

.field public static final ACC_ANNOTATION:Ljava/lang/String; = "ACC_ANNOTATION"

.field public static final ACC_ENUM:Ljava/lang/String; = "ACC_ENUM"

.field public static final ACC_FINAL:Ljava/lang/String; = "ACC_FINAL"

.field public static final ACC_INTERFACE:Ljava/lang/String; = "ACC_INTERFACE"

.field public static final ACC_NATIVE:Ljava/lang/String; = "ACC_NATIVE"

.field public static final ACC_PRIVATE:Ljava/lang/String; = "ACC_PRIVATE"

.field public static final ACC_PROTECTED:Ljava/lang/String; = "ACC_PROTECTED"

.field public static final ACC_PUBLIC:Ljava/lang/String; = "ACC_PUBLIC"

.field public static final ACC_STATIC:Ljava/lang/String; = "ACC_STATIC"

.field public static final ACC_STRICT:Ljava/lang/String; = "ACC_STRICT"

.field public static final ACC_SYNCHRONIZED:Ljava/lang/String; = "ACC_SYNCHRONIZED"

.field public static final ACC_SYNTHETIC:Ljava/lang/String; = "ACC_SYNTHETIC"

.field public static final ACC_TRANSIENT:Ljava/lang/String; = "ACC_TRANSIENT"

.field public static final ACC_VOLATILE:Ljava/lang/String; = "ACC_VOLATILE"

.field public static final ATTRIBUTE_ANNOTATION_DEFAULT:Ljava/lang/String; = "AnnotationDefault"

.field public static final ATTRIBUTE_CLASS_FILE_VERSION:Ljava/lang/String; = "class-file version"

.field public static final ATTRIBUTE_CODE:Ljava/lang/String; = "Code"

.field public static final ATTRIBUTE_CONSTANT_VALUE:Ljava/lang/String; = "ConstantValue"

.field public static final ATTRIBUTE_DEPRECATED:Ljava/lang/String; = "Deprecated"

.field public static final ATTRIBUTE_ENCLOSING_METHOD:Ljava/lang/String; = "EnclosingMethod"

.field public static final ATTRIBUTE_EXCEPTIONS:Ljava/lang/String; = "Exceptions"

.field public static final ATTRIBUTE_INNER_CLASSES:Ljava/lang/String; = "InnerClasses"

.field public static final ATTRIBUTE_LINE_NUMBER_TABLE:Ljava/lang/String; = "LineNumberTable"

.field public static final ATTRIBUTE_LOCAL_VARIABLE_TABLE:Ljava/lang/String; = "LocalVariableTable"

.field public static final ATTRIBUTE_LOCAL_VARIABLE_TYPE_TABLE:Ljava/lang/String; = "LocalVariableTypeTable"

.field public static final ATTRIBUTE_RUNTIME_INVISIBLE_ANNOTATIONS:Ljava/lang/String; = "RuntimeInvisibleAnnotations"

.field public static final ATTRIBUTE_RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS:Ljava/lang/String; = "RuntimeInvisibleParameterAnnotations"

.field public static final ATTRIBUTE_RUNTIME_VISIBLE_ANNOTATIONS:Ljava/lang/String; = "RuntimeVisibleAnnotations"

.field public static final ATTRIBUTE_RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS:Ljava/lang/String; = "RuntimeVisibleParameterAnnotations"

.field public static final ATTRIBUTE_SIGNATURE:Ljava/lang/String; = "Signature"

.field public static final ATTRIBUTE_SOURCE_FILE:Ljava/lang/String; = "SourceFile"

.field public static final CONTEXT_CLASS:I = 0x0

.field public static final CONTEXT_CODE:I = 0x3

.field public static final CONTEXT_FIELD:I = 0x1

.field public static final CONTEXT_METHOD:I = 0x2

.field public static final contextNames:[Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:J

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Method"

    const-string v1, "Code"

    const-string v2, "Class"

    const-string v3, "Field"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->contextNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p4, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->b:I

    .line 4
    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->a:I

    if-ltz p4, :cond_0

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p4

    .line 5
    iput-wide v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->d:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->d:J

    :goto_0
    if-eqz p2, :cond_2

    const/4 p4, 0x3

    if-eq p2, p4, :cond_2

    const/4 p4, 0x1

    if-eq p2, p4, :cond_2

    const/4 p4, 0x2

    if-ne p2, p4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Attribute context out of range: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->e:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    .line 11
    iput-boolean p5, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->f:Z

    return-void

    .line 12
    :cond_3
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Cannot have an unnamed layout"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_4
    new-instance p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string p1, "Cannot have a null layout"

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    const-string v0, "R"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x4e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    :cond_0
    const-string v0, "RU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, v1, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getValue(IJ)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "RS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x8

    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getValue(IJ)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "K"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_5

    const/16 v1, 0x46

    if-eq v0, v1, :cond_4

    const/16 v1, 0x53

    if-eq v0, v1, :cond_3

    const/16 v1, 0x49

    if-eq v0, v1, :cond_6

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_7

    const/4 p0, 0x4

    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getValue(IJ)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x6

    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getValue(IJ)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x3

    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getValue(IJ)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x5

    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getValue(IJ)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x2

    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getValue(IJ)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown layout encoding: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const-string v1, "KS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const-string v1, "RS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->SIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_3

    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object p0
.end method

.method public getContext()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->a:I

    return p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->b:I

    return p0
.end method

.method public getLayout()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const-string v1, "KQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    invoke-static {p0, p1, p2, p4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->a(Ljava/lang/String;JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Ljava/lang/String;"

    .line 4
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "KS"

    .line 5
    invoke-static {p0, p1, p2, p4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->a(Ljava/lang/String;JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->a(Ljava/lang/String;JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0
.end method

.method public getValue(JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->a(Ljava/lang/String;JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->e:Ljava/lang/String;

    const/16 v1, 0x1f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    mul-int/2addr v0, v1

    iget v2, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->b:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->a:I

    add-int/2addr v0, p0

    return v0
.end method

.method public isDefaultLayout()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->f:Z

    return p0
.end method

.method public matches(J)Z
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->d:J

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public numBackwardsCallables()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->c:Ljava/lang/String;

    const-string v1, "*"

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->g:I

    return p0
.end method

.method public setBackwardsCallCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->g:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->contextNames:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
