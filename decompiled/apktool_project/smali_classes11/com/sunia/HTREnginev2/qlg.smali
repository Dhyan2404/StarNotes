.class public final synthetic Lcom/sunia/HTREnginev2/qlg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qlg;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qlg;->a:Ljava/lang/CharSequence;

    check-cast p1, Ljava/io/Writer;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/output/FilterCollectionWriter;->e0(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    return-void
.end method
