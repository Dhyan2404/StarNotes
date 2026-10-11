.class public final Lcom/dropbox/core/util/DumpWriter$Multiline;
.super Lcom/dropbox/core/util/DumpWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/util/DumpWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Multiline"
.end annotation


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/dropbox/core/util/DumpWriter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_0

    .line 3
    iput-object p1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    .line 4
    iput p2, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->b:I

    .line 5
    iput p3, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->c:I

    .line 6
    iput-boolean p4, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'currentIndent\' must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'indentAmount\' must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dropbox/core/util/DumpWriter$Multiline;-><init>(Ljava/lang/StringBuilder;IIZ)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->b:I

    iget v1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->c:I

    if-gt v0, v1, :cond_0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->c:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "indent went negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->c:I

    iget v1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->c:I

    return-void
.end method

.method public final d()V
    .locals 4

    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->c:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->d()V

    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "called fieldStart() in a bad state"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public listEnd()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->b()V

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->d()V

    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "called listEnd() in a bad state"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public listStart()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->d()V

    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    const-string v1, "[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->c()V

    return-object p0
.end method

.method public recordEnd()Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->b()V

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->d()V

    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "called recordEnd() in a bad state"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public recordStart(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->d()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->c()V

    return-object p0
.end method

.method public verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter$Multiline;->d()V

    iget-object v0, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dropbox/core/util/DumpWriter$Multiline;->d:Z

    return-object p0
.end method
