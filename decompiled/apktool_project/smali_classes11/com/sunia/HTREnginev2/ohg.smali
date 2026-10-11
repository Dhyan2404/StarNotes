.class public final synthetic Lcom/sunia/HTREnginev2/ohg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/FileSystem;

.field public final synthetic b:C


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/FileSystem;C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ohg;->a:Lonyx/org/apache/commons/io/FileSystem;

    iput-char p2, p0, Lcom/sunia/HTREnginev2/ohg;->b:C

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ohg;->a:Lonyx/org/apache/commons/io/FileSystem;

    iget-char p0, p0, Lcom/sunia/HTREnginev2/ohg;->b:C

    invoke-static {v0, p0, p1}, Lonyx/org/apache/commons/io/FileSystem;->a(Lonyx/org/apache/commons/io/FileSystem;CI)I

    move-result p0

    return p0
.end method
