.class public interface abstract Lcom/sun/org/apache/xalan/internal/trace/TraceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# virtual methods
.method public abstract generated(Lcom/sun/org/apache/xalan/internal/trace/GenerateEvent;)V
.end method

.method public abstract selected(Lcom/sun/org/apache/xalan/internal/trace/SelectionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public abstract trace(Lcom/sun/org/apache/xalan/internal/trace/TracerEvent;)V
.end method
