.class public Lcom/google/common/io/LineReader$a;
.super Lcom/sunia/HTREnginev2/jyi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/LineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/io/LineReader;


# direct methods
.method public constructor <init>(Lcom/google/common/io/LineReader;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/LineReader$a;->c:Lcom/google/common/io/LineReader;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/jyi;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/io/LineReader$a;->c:Lcom/google/common/io/LineReader;

    invoke-static {p0}, Lcom/google/common/io/LineReader;->a(Lcom/google/common/io/LineReader;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
