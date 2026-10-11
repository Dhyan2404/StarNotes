.class public final synthetic Lcom/sunia/HTREnginev2/rvm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p3, Lorg/apache/logging/log4j/util/StringMap;

    invoke-static {p1, p2, p3}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/apache/logging/log4j/util/StringMap;)V

    return-void
.end method
