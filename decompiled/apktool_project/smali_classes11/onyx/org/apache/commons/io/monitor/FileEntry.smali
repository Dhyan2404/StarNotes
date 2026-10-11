.class public Lonyx/org/apache/commons/io/monitor/FileEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_FILE_ENTRY_ARRAY:[Lonyx/org/apache/commons/io/monitor/FileEntry;

.field private static final serialVersionUID:J = -0x22c5e8fed07c1d41L


# instance fields
.field private children:[Lonyx/org/apache/commons/io/monitor/FileEntry;

.field private directory:Z

.field private exists:Z

.field private final file:Ljava/io/File;

.field private lastModified:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

.field private length:J

.field private name:Ljava/lang/String;

.field private final parent:Lonyx/org/apache/commons/io/monitor/FileEntry;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lonyx/org/apache/commons/io/monitor/FileEntry;

    sput-object v0, Lonyx/org/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lonyx/org/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lonyx/org/apache/commons/io/monitor/FileEntry;-><init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lonyx/org/apache/commons/io/monitor/SerializableFileTime;->EPOCH:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    iput-object v0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->lastModified:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    const-string v0, "file"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    .line 5
    iput-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->parent:Lonyx/org/apache/commons/io/monitor/FileEntry;

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildren()[Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->children:[Lonyx/org/apache/commons/io/monitor/FileEntry;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lonyx/org/apache/commons/io/monitor/FileEntry;

    :goto_0
    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->file:Ljava/io/File;

    return-object p0
.end method

.method public getLastModified()J
    .locals 2

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->lastModified:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/SerializableFileTime;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastModifiedFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->lastModified:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/SerializableFileTime;->unwrap()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->length:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->parent:Lonyx/org/apache/commons/io/monitor/FileEntry;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->getLevel()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParent()Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->parent:Lonyx/org/apache/commons/io/monitor/FileEntry;

    return-object p0
.end method

.method public isDirectory()Z
    .locals 0

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->directory:Z

    return p0
.end method

.method public isExists()Z
    .locals 0

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->exists:Z

    return p0
.end method

.method public newChildInstance(Ljava/io/File;)Lonyx/org/apache/commons/io/monitor/FileEntry;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p0, p1}, Lonyx/org/apache/commons/io/monitor/FileEntry;-><init>(Lonyx/org/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    return-object v0
.end method

.method public refresh(Ljava/io/File;)Z
    .locals 10

    iget-boolean v0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->exists:Z

    iget-object v1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->lastModified:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    iget-boolean v2, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->directory:Z

    iget-wide v3, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->length:J

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    iput-boolean v5, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->exists:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->directory:Z

    :try_start_0
    iget-boolean v5, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v5, :cond_1

    invoke-static {p1}, Lonyx/org/apache/commons/io/FileUtils;->lastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;

    move-result-object v5

    goto :goto_1

    :cond_1
    sget-object v5, Lonyx/org/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    :goto_1
    invoke-virtual {p0, v5}, Lonyx/org/apache/commons/io/monitor/FileEntry;->setLastModified(Ljava/nio/file/attribute/FileTime;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v5, Lonyx/org/apache/commons/io/monitor/SerializableFileTime;->EPOCH:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    invoke-virtual {p0, v5}, Lonyx/org/apache/commons/io/monitor/FileEntry;->setLastModified(Lonyx/org/apache/commons/io/monitor/SerializableFileTime;)V

    :goto_2
    iget-boolean v5, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->exists:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->directory:Z

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    goto :goto_3

    :cond_2
    const-wide/16 v8, 0x0

    :goto_3
    iput-wide v8, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->length:J

    iget-boolean p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->exists:Z

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->lastModified:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    invoke-virtual {p1, v1}, Lonyx/org/apache/commons/io/monitor/SerializableFileTime;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->directory:Z

    if-ne p1, v2, :cond_3

    iget-wide p0, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->length:J

    cmp-long p0, p0, v3

    if-eqz p0, :cond_4

    :cond_3
    move v6, v7

    :cond_4
    return v6
.end method

.method public varargs setChildren([Lonyx/org/apache/commons/io/monitor/FileEntry;)V
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->children:[Lonyx/org/apache/commons/io/monitor/FileEntry;

    return-void
.end method

.method public setDirectory(Z)V
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->directory:Z

    return-void
.end method

.method public setExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->exists:Z

    return-void
.end method

.method public setLastModified(J)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/monitor/FileEntry;->setLastModified(Ljava/nio/file/attribute/FileTime;)V

    return-void
.end method

.method public setLastModified(Ljava/nio/file/attribute/FileTime;)V
    .locals 1

    .line 1
    new-instance v0, Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    invoke-direct {v0, p1}, Lonyx/org/apache/commons/io/monitor/SerializableFileTime;-><init>(Ljava/nio/file/attribute/FileTime;)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/monitor/FileEntry;->setLastModified(Lonyx/org/apache/commons/io/monitor/SerializableFileTime;)V

    return-void
.end method

.method public setLastModified(Lonyx/org/apache/commons/io/monitor/SerializableFileTime;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->lastModified:Lonyx/org/apache/commons/io/monitor/SerializableFileTime;

    return-void
.end method

.method public setLength(J)V
    .locals 0

    iput-wide p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->length:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/monitor/FileEntry;->name:Ljava/lang/String;

    return-void
.end method
