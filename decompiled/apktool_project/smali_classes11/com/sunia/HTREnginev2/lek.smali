.class public final synthetic Lcom/sunia/HTREnginev2/lek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lonyx/org/apache/commons/io/function/IOConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;

    invoke-virtual {p1}, Lonyx/org/apache/commons/io/input/ObservableInputStream$Observer;->closed()V

    return-void
.end method
