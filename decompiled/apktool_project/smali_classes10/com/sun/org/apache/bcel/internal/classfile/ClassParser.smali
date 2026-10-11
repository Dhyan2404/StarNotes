.class public final Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFSIZE:I = 0x2000


# instance fields
.field private access_flags:I

.field private attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

.field private class_name_index:I

.field private constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

.field private fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

.field private file:Ljava/io/DataInputStream;

.field private file_name:Ljava/lang/String;

.field private interfaces:[I

.field private is_zip:Z

.field private major:I

.field private methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

.field private minor:I

.field private superclass_name_index:I

.field private zip:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file_name:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "java.util.zip."

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "java.util.jar."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->is_zip:Z

    .line 5
    instance-of p2, p1, Ljava/io/DataInputStream;

    if-eqz p2, :cond_2

    .line 6
    check-cast p1, Ljava/io/DataInputStream;

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    goto :goto_2

    .line 7
    :cond_2
    new-instance p2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->is_zip:Z

    .line 10
    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file_name:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2000

    invoke-direct {v1, v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->is_zip:Z

    .line 14
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->zip:Ljava/util/zip/ZipFile;

    .line 15
    invoke-virtual {v0, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 16
    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file_name:Ljava/lang/String;

    .line 17
    new-instance p2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->zip:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    const/16 v1, 0x2000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    return-void
.end method

.method private final readAttributes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-static {v3, v4}, Lcom/sun/org/apache/bcel/internal/classfile/Attribute;->readAttribute(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final readClassInfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->access_flags:I

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->access_flags:I

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->access_flags:I

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;

    const-string v0, "Class can\'t be both final and abstract"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->class_name_index:I

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->superclass_name_index:I

    return-void
.end method

.method private final readConstantPool()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    return-void
.end method

.method private final readFields()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Field;

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/classfile/Field;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-direct {v3, v4, v5}, Lcom/sun/org/apache/bcel/internal/classfile/Field;-><init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final readID()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file_name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a Java .class file"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readInterfaces()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->interfaces:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->interfaces:[I

    iget-object v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final readMethods()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    new-array v1, v0, [Lcom/sun/org/apache/bcel/internal/classfile/Method;

    iput-object v1, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/classfile/Method;

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    iget-object v5, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    invoke-direct {v3, v4, v5}, Lcom/sun/org/apache/bcel/internal/classfile/Method;-><init>(Ljava/io/DataInputStream;Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final readVersion()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->minor:I

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->major:I

    return-void
.end method


# virtual methods
.method public parse()Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/bcel/internal/classfile/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->readID()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->readVersion()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->readConstantPool()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->readClassInfo()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->readInterfaces()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->readFields()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->readMethods()V

    invoke-direct {p0}, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->readAttributes()V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->zip:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    new-instance v0, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;

    iget v2, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->class_name_index:I

    iget v3, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->superclass_name_index:I

    iget-object v4, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->file_name:Ljava/lang/String;

    iget v5, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->major:I

    iget v6, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->minor:I

    iget v7, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->access_flags:I

    iget-object v8, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->constant_pool:Lcom/sun/org/apache/bcel/internal/classfile/ConstantPool;

    iget-object v9, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->interfaces:[I

    iget-object v10, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->fields:[Lcom/sun/org/apache/bcel/internal/classfile/Field;

    iget-object v11, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->methods:[Lcom/sun/org/apache/bcel/internal/classfile/Method;

    iget-object v12, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->attributes:[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;

    iget-boolean p0, p0, Lcom/sun/org/apache/bcel/internal/classfile/ClassParser;->is_zip:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    move v13, p0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/sun/org/apache/bcel/internal/classfile/JavaClass;-><init>(IILjava/lang/String;IIILcom/sun/org/apache/bcel/internal/classfile/ConstantPool;[I[Lcom/sun/org/apache/bcel/internal/classfile/Field;[Lcom/sun/org/apache/bcel/internal/classfile/Method;[Lcom/sun/org/apache/bcel/internal/classfile/Attribute;B)V

    return-object v0
.end method
