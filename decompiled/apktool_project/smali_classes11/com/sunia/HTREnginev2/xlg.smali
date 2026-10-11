.class public final synthetic Lcom/sunia/HTREnginev2/xlg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/xlg;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/xlg;->a:I

    check-cast p1, Ljava/io/Writer;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->f0(ILjava/io/Writer;)V

    return-void
.end method
