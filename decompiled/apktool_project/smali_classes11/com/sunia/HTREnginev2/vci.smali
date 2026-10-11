.class public final synthetic Lcom/sunia/HTREnginev2/vci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/function/IOConsumer;


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/function/IOConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vci;->e:Lonyx/org/apache/commons/io/function/IOConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vci;->e:Lonyx/org/apache/commons/io/function/IOConsumer;

    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/function/IOConsumer;->e(Lonyx/org/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method
