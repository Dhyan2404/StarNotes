.class public Lcom/sunia/HTREnginev2/lqd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/apache/commons/compress/archivers/ArchiveEntry;

.field public final c:Ljava/io/InputStream;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fileName"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/lqd;->a:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/sunia/HTREnginev2/lqd;->e:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/sunia/HTREnginev2/lqd;->c:Ljava/io/InputStream;

    .line 6
    iput-object p1, p0, Lcom/sunia/HTREnginev2/lqd;->b:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/lqd;->d:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "archiveEntry"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "inputStream"

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/sunia/HTREnginev2/lqd;->b:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 12
    iput-object p2, p0, Lcom/sunia/HTREnginev2/lqd;->c:Ljava/io/InputStream;

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lcom/sunia/HTREnginev2/lqd;->e:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/sunia/HTREnginev2/lqd;->a:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/sunia/HTREnginev2/lqd;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lqd;->b:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object p0
.end method

.method public b()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lqd;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/lqd;->d:Z

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lqd;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/lqd;->e:I

    return p0
.end method
