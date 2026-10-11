.class public Lonyx/org/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lonyx/org/apache/commons/io/input/Tailer$c;,
        Lonyx/org/apache/commons/io/input/Tailer$Tailable;,
        Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;,
        Lonyx/org/apache/commons/io/input/Tailer$b;,
        Lonyx/org/apache/commons/io/input/Tailer$Builder;
    }
.end annotation


# static fields
.field public static final m:I = 0x3e8

.field public static final n:Ljava/lang/String; = "r"

.field public static final o:Ljava/nio/charset/Charset;


# instance fields
.field public final e:[B

.field public final f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

.field public final g:Ljava/nio/charset/Charset;

.field public final h:Ljava/time/Duration;

.field public final i:Z

.field public final j:Lonyx/org/apache/commons/io/input/TailerListener;

.field public final k:Z

.field public volatile l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lonyx/org/apache/commons/io/input/Tailer;->o:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lonyx/org/apache/commons/io/input/TailerListener;JZZI)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v1, Lonyx/org/apache/commons/io/input/Tailer$c;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lonyx/org/apache/commons/io/input/Tailer$c;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lonyx/org/apache/commons/io/input/Tailer$a;)V

    invoke-static {p4, p5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Lonyx/org/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lonyx/org/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 4
    invoke-direct/range {v0 .. v5}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v6, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZI)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p6

    .line 8
    invoke-direct/range {v0 .. v7}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZZ)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v7, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 6
    invoke-direct/range {v0 .. v7}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZZI)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    sget-object v2, Lonyx/org/apache/commons/io/input/Tailer;->o:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lonyx/org/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Lonyx/org/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lonyx/org/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZI)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/Tailer;->l:Z

    const-string v0, "tailable"

    .line 11
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    const-string p1, "listener"

    .line 12
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lonyx/org/apache/commons/io/input/TailerListener;

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    .line 13
    iput-object p4, p0, Lonyx/org/apache/commons/io/input/Tailer;->h:Ljava/time/Duration;

    .line 14
    iput-boolean p5, p0, Lonyx/org/apache/commons/io/input/Tailer;->i:Z

    .line 15
    invoke-static {p7}, Lonyx/org/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lonyx/org/apache/commons/io/input/Tailer;->e:[B

    .line 16
    invoke-interface {p3, p0}, Lonyx/org/apache/commons/io/input/TailerListener;->init(Lonyx/org/apache/commons/io/input/Tailer;)V

    .line 17
    iput-boolean p6, p0, Lonyx/org/apache/commons/io/input/Tailer;->k:Z

    .line 18
    iput-object p2, p0, Lonyx/org/apache/commons/io/input/Tailer;->g:Ljava/nio/charset/Charset;

    return-void
.end method

.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lonyx/org/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZILonyx/org/apache/commons/io/input/Tailer$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lonyx/org/apache/commons/io/input/Tailer;-><init>(Lonyx/org/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lonyx/org/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZI)V

    return-void
.end method

.method public static builder()Lonyx/org/apache/commons/io/input/Tailer$Builder;
    .locals 1

    new-instance v0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    invoke-direct {v0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/nio/charset/Charset;Lonyx/org/apache/commons/io/input/TailerListener;JZZI)Lonyx/org/apache/commons/io/input/Tailer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lonyx/org/apache/commons/io/input/Tailer;->builder()Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 3
    invoke-virtual {p0, p2}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 5
    invoke-static {p3, p4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p5}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p6}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p7}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 9
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->get()Lonyx/org/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-static {}, Lonyx/org/apache/commons/io/input/Tailer;->builder()Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 12
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->get()Lonyx/org/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;J)Lonyx/org/apache/commons/io/input/Tailer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-static {}, Lonyx/org/apache/commons/io/input/Tailer;->builder()Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 16
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 17
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->get()Lonyx/org/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZ)Lonyx/org/apache/commons/io/input/Tailer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    invoke-static {}, Lonyx/org/apache/commons/io/input/Tailer;->builder()Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 21
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 22
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p4}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->get()Lonyx/org/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZI)Lonyx/org/apache/commons/io/input/Tailer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-static {}, Lonyx/org/apache/commons/io/input/Tailer;->builder()Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 42
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 43
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 44
    invoke-virtual {p0, p4}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0, p5}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 46
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->get()Lonyx/org/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZZ)Lonyx/org/apache/commons/io/input/Tailer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    invoke-static {}, Lonyx/org/apache/commons/io/input/Tailer;->builder()Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 27
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 28
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 29
    invoke-virtual {p0, p4}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 30
    invoke-virtual {p0, p5}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->get()Lonyx/org/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lonyx/org/apache/commons/io/input/TailerListener;JZZI)Lonyx/org/apache/commons/io/input/Tailer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-static {}, Lonyx/org/apache/commons/io/input/Tailer;->builder()Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;->setFile(Ljava/io/File;)Lonyx/org/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 34
    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lonyx/org/apache/commons/io/input/TailerListener;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 35
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p4}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 37
    invoke-virtual {p0, p5}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lonyx/org/apache/commons/io/input/Tailer$Builder;

    move-result-object p0

    .line 38
    invoke-virtual {p0, p6}, Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;->setBufferSize(I)Lonyx/org/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object p0

    check-cast p0, Lonyx/org/apache/commons/io/input/Tailer$Builder;

    .line 39
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer$Builder;->get()Lonyx/org/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lonyx/org/apache/commons/io/input/Tailer;->l:Z

    return-void
.end method

.method public final f(Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    invoke-interface {p1}, Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->getPointer()J

    move-result-wide v1

    const/4 v3, 0x0

    move-wide v4, v1

    move v6, v3

    :goto_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lonyx/org/apache/commons/io/input/Tailer;->e:[B

    invoke-interface {p1, v7}, Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_4

    iget-object v9, p0, Lonyx/org/apache/commons/io/input/Tailer;->e:[B

    aget-byte v9, v9, v8

    const/16 v10, 0xa

    const-wide/16 v11, 0x1

    if-eq v9, v10, :cond_3

    const/16 v10, 0xd

    if-eq v9, v10, :cond_1

    if-eqz v6, :cond_0

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v10, p0, Lonyx/org/apache/commons/io/input/Tailer;->g:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v2}, Lonyx/org/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-long v1, v8

    add-long/2addr v1, v4

    add-long/2addr v1, v11

    move v6, v3

    :cond_0
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iget-object v9, p0, Lonyx/org/apache/commons/io/input/Tailer;->g:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v2}, Lonyx/org/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-long v1, v8

    add-long/2addr v1, v4

    add-long/2addr v1, v11

    move v6, v3

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->getPointer()J

    move-result-wide v4

    goto :goto_0

    :cond_5
    invoke-interface {p1, v1, v2}, Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    instance-of p1, p0, Lonyx/org/apache/commons/io/input/TailerListenerAdapter;

    if-eqz p1, :cond_6

    check-cast p0, Lonyx/org/apache/commons/io/input/TailerListenerAdapter;

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/TailerListenerAdapter;->endOfFileReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-wide v1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method public getDelay()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer;->h:Ljava/time/Duration;

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDelayDuration()Ljava/time/Duration;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer;->h:Ljava/time/Duration;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    instance-of v1, v0, Lonyx/org/apache/commons/io/input/Tailer$c;

    if-eqz v1, :cond_0

    check-cast v0, Lonyx/org/apache/commons/io/input/Tailer$c;

    invoke-virtual {v0}, Lonyx/org/apache/commons/io/input/Tailer$c;->a()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot extract java.io.File from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRun()Z
    .locals 0

    iget-boolean p0, p0, Lonyx/org/apache/commons/io/input/Tailer;->l:Z

    return p0
.end method

.method public getTailable()Lonyx/org/apache/commons/io/input/Tailer$Tailable;
    .locals 0

    iget-object p0, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    return-object p0
.end method

.method public run()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lonyx/org/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer;->getRun()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-string v7, "r"

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    :try_start_1
    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v6, v7}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_1

    :catch_0
    :try_start_2
    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    invoke-interface {v6}, Lonyx/org/apache/commons/io/input/TailerListener;->fileNotFound()V

    :goto_1
    if-nez v0, :cond_0

    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->h:Ljava/time/Duration;

    invoke-static {v6}, Lonyx/org/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lonyx/org/apache/commons/io/input/Tailer;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v1}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->size()J

    move-result-wide v4

    goto :goto_2

    :cond_1
    move-wide v4, v2

    :goto_2
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v1}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-interface {v0, v4, v5}, Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    goto :goto_0

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer;->getRun()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v6, v1}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->isNewer(Ljava/nio/file/attribute/FileTime;)Z

    move-result v6

    iget-object v8, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v8}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->size()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-gez v8, :cond_5

    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    invoke-interface {v6}, Lonyx/org/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v6, v7}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/Tailer;->f(Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v8

    goto :goto_6

    :catch_1
    move-exception v8

    :try_start_5
    iget-object v9, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    invoke-interface {v9, v8}, Lonyx/org/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    if-eqz v0, :cond_3

    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    :catch_2
    move-wide v4, v2

    goto :goto_8

    :cond_3
    :goto_5
    move-wide v4, v2

    move-object v0, v6

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v6, v0

    :goto_6
    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v9

    if-eqz v0, :cond_4

    :try_start_8
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_7
    throw v9
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v1

    move-object v0, v6

    goto/16 :goto_f

    :catch_3
    move-exception v1

    move-object v0, v6

    goto :goto_a

    :catch_4
    move-exception v1

    move-object v0, v6

    goto/16 :goto_d

    :catch_5
    :goto_8
    move-object v0, v6

    :try_start_a
    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    invoke-interface {v6}, Lonyx/org/apache/commons/io/input/TailerListener;->fileNotFound()V

    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->h:Ljava/time/Duration;

    invoke-static {v6}, Lonyx/org/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    goto :goto_3

    :cond_5
    if-lez v8, :cond_6

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/Tailer;->f(Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J

    move-result-wide v4

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v1}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    goto :goto_9

    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v0, v2, v3}, Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    invoke-virtual {p0, v0}, Lonyx/org/apache/commons/io/input/Tailer;->f(Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J

    move-result-wide v4

    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v1}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    :cond_7
    :goto_9
    iget-boolean v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->k:Z

    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    :cond_8
    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->h:Ljava/time/Duration;

    invoke-static {v6}, Lonyx/org/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer;->getRun()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->k:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lonyx/org/apache/commons/io/input/Tailer;->f:Lonyx/org/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v6, v7}, Lonyx/org/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lonyx/org/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto/16 :goto_3

    :cond_9
    :try_start_b
    invoke-static {v0}, Lonyx/org/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v1

    goto :goto_f

    :catch_7
    move-exception v1

    :goto_a
    :try_start_c
    iget-object v2, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v1}, Lonyx/org/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-static {v0}, Lonyx/org/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    :goto_b
    iget-object v1, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    invoke-interface {v1, v0}, Lonyx/org/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    :goto_c
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer;->close()V

    goto :goto_e

    :catch_9
    move-exception v1

    :goto_d
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v1}, Lonyx/org/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    invoke-static {v0}, Lonyx/org/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    goto :goto_c

    :catch_a
    move-exception v0

    goto :goto_b

    :goto_e
    return-void

    :goto_f
    :try_start_10
    invoke-static {v0}, Lonyx/org/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    iget-object v2, p0, Lonyx/org/apache/commons/io/input/Tailer;->j:Lonyx/org/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v0}, Lonyx/org/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    :goto_10
    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer;->close()V

    throw v1
.end method

.method public stop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lonyx/org/apache/commons/io/input/Tailer;->close()V

    return-void
.end method
