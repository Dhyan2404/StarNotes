.class public interface abstract Lorg/apache/poi/convert/htmlgen/TableRowHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/convert/htmlgen/ConverterHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/poi/convert/htmlgen/ConverterHandler;",
        "Ljava/io/Closeable;"
    }
.end annotation


# virtual methods
.method public abstract handleTableRow(Ljava/util/Map;[Lorg/apache/poi/style/UnitValue;Lorg/jsoup/nodes/Element;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jsoup/nodes/Element;",
            ">;[",
            "Lorg/apache/poi/style/UnitValue;",
            "Lorg/jsoup/nodes/Element;",
            "III)V"
        }
    .end annotation
.end method
