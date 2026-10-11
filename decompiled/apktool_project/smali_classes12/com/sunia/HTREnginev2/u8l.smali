.class public final synthetic Lcom/sunia/HTREnginev2/u8l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/logging/log4j/util/BiConsumer;


# instance fields
.field public final synthetic a:Lorg/apache/logging/log4j/util/PropertiesUtil$b;

.field public final synthetic b:Lorg/apache/logging/log4j/util/PropertySource;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/logging/log4j/util/PropertiesUtil$b;Lorg/apache/logging/log4j/util/PropertySource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/u8l;->a:Lorg/apache/logging/log4j/util/PropertiesUtil$b;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/u8l;->b:Lorg/apache/logging/log4j/util/PropertySource;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/u8l;->a:Lorg/apache/logging/log4j/util/PropertiesUtil$b;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/u8l;->b:Lorg/apache/logging/log4j/util/PropertySource;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/logging/log4j/util/PropertiesUtil$b;->b(Lorg/apache/logging/log4j/util/PropertiesUtil$b;Lorg/apache/logging/log4j/util/PropertySource;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
