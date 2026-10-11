.class public final synthetic Lcom/sunia/HTREnginev2/ylg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:C


# direct methods
.method public synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/sunia/HTREnginev2/ylg;->a:C

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-char p0, p0, Lcom/sunia/HTREnginev2/ylg;->a:C

    check-cast p1, Ljava/io/Writer;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->M(CLjava/io/Writer;)V

    return-void
.end method
