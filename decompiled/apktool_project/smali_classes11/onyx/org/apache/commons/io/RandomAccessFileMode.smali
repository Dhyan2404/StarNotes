.class public final enum Lonyx/org/apache/commons/io/RandomAccessFileMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lonyx/org/apache/commons/io/RandomAccessFileMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lonyx/org/apache/commons/io/RandomAccessFileMode;

.field public static final enum READ_ONLY:Lonyx/org/apache/commons/io/RandomAccessFileMode;

.field public static final enum READ_WRITE:Lonyx/org/apache/commons/io/RandomAccessFileMode;

.field public static final enum READ_WRITE_SYNC_ALL:Lonyx/org/apache/commons/io/RandomAccessFileMode;

.field public static final enum READ_WRITE_SYNC_CONTENT:Lonyx/org/apache/commons/io/RandomAccessFileMode;


# instance fields
.field private final mode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lonyx/org/apache/commons/io/RandomAccessFileMode;

    const/4 v1, 0x0

    const-string v2, "r"

    const-string v3, "READ_ONLY"

    invoke-direct {v0, v3, v1, v2}, Lonyx/org/apache/commons/io/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lonyx/org/apache/commons/io/RandomAccessFileMode;->READ_ONLY:Lonyx/org/apache/commons/io/RandomAccessFileMode;

    new-instance v1, Lonyx/org/apache/commons/io/RandomAccessFileMode;

    const/4 v2, 0x1

    const-string v3, "rw"

    const-string v4, "READ_WRITE"

    invoke-direct {v1, v4, v2, v3}, Lonyx/org/apache/commons/io/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lonyx/org/apache/commons/io/RandomAccessFileMode;->READ_WRITE:Lonyx/org/apache/commons/io/RandomAccessFileMode;

    new-instance v2, Lonyx/org/apache/commons/io/RandomAccessFileMode;

    const/4 v3, 0x2

    const-string v4, "rws"

    const-string v5, "READ_WRITE_SYNC_ALL"

    invoke-direct {v2, v5, v3, v4}, Lonyx/org/apache/commons/io/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lonyx/org/apache/commons/io/RandomAccessFileMode;->READ_WRITE_SYNC_ALL:Lonyx/org/apache/commons/io/RandomAccessFileMode;

    new-instance v3, Lonyx/org/apache/commons/io/RandomAccessFileMode;

    const/4 v4, 0x3

    const-string v5, "rwd"

    const-string v6, "READ_WRITE_SYNC_CONTENT"

    invoke-direct {v3, v6, v4, v5}, Lonyx/org/apache/commons/io/RandomAccessFileMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lonyx/org/apache/commons/io/RandomAccessFileMode;->READ_WRITE_SYNC_CONTENT:Lonyx/org/apache/commons/io/RandomAccessFileMode;

    filled-new-array {v0, v1, v2, v3}, [Lonyx/org/apache/commons/io/RandomAccessFileMode;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/RandomAccessFileMode;->$VALUES:[Lonyx/org/apache/commons/io/RandomAccessFileMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lonyx/org/apache/commons/io/RandomAccessFileMode;->mode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lonyx/org/apache/commons/io/RandomAccessFileMode;
    .locals 1

    const-class v0, Lonyx/org/apache/commons/io/RandomAccessFileMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/RandomAccessFileMode;

    return-object p0
.end method

.method public static values()[Lonyx/org/apache/commons/io/RandomAccessFileMode;
    .locals 1

    sget-object v0, Lonyx/org/apache/commons/io/RandomAccessFileMode;->$VALUES:[Lonyx/org/apache/commons/io/RandomAccessFileMode;

    invoke-virtual {v0}, [Lonyx/org/apache/commons/io/RandomAccessFileMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lonyx/org/apache/commons/io/RandomAccessFileMode;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lonyx/org/apache/commons/io/RandomAccessFileMode;->mode:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public create(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lonyx/org/apache/commons/io/RandomAccessFileMode;->mode:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public create(Ljava/nio/file/Path;)Ljava/io/RandomAccessFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    const-string v0, "file"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/RandomAccessFileMode;->create(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/RandomAccessFileMode;->mode:Ljava/lang/String;

    return-object p0
.end method
