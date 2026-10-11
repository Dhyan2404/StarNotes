.class public final synthetic Lcom/sunia/HTREnginev2/ulg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:[C


# direct methods
.method public synthetic constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ulg;->a:[C

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ulg;->a:[C

    check-cast p1, Ljava/io/Writer;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->H([CLjava/io/Writer;)V

    return-void
.end method
