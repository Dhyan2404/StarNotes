.class public final synthetic Lcom/sunia/HTREnginev2/urn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/urn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/urn;->a:Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;->H(Lonyx/org/apache/commons/io/output/UncheckedFilterWriter;Ljava/lang/String;)V

    return-void
.end method
