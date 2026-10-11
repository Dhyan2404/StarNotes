.class public final Lonyx/org/apache/commons/io/input/Tailer$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/input/Tailer$Tailable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lonyx/org/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/nio/file/Path;

.field public final b:[Ljava/nio/file/LinkOption;


# direct methods
.method public varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "path"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/nio/file/Path;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->a:Ljava/nio/file/Path;

    .line 4
    iput-object p2, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->b:[Ljava/nio/file/LinkOption;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lonyx/org/apache/commons/io/input/Tailer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lonyx/org/apache/commons/io/input/Tailer$c;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/file/Path;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->a:Ljava/nio/file/Path;

    return-object p0
.end method

.method public getRandomAccess(Ljava/lang/String;)Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Lonyx/org/apache/commons/io/input/Tailer$b;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->a:Ljava/nio/file/Path;

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lonyx/org/apache/commons/io/input/Tailer$b;-><init>(Ljava/io/File;Ljava/lang/String;Lonyx/org/apache/commons/io/input/Tailer$a;)V

    return-object v0
.end method

.method public isNewer(Ljava/nio/file/attribute/FileTime;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->a:Ljava/nio/file/Path;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->b:[Ljava/nio/file/LinkOption;

    invoke-static {v0, p1, p0}, Lonyx/org/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result p0

    return p0
.end method

.method public lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->a:Ljava/nio/file/Path;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->b:[Ljava/nio/file/LinkOption;

    invoke-static {v0, p0}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    return-object p0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->a:Ljava/nio/file/Path;

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TailablePath [file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->a:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", linkOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer$c;->b:[Ljava/nio/file/LinkOption;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
