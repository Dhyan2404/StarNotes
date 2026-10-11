.class public final synthetic Lcom/sunia/HTREnginev2/srn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOTriConsumer;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/srn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/srn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->j(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/String;II)V

    return-void
.end method
