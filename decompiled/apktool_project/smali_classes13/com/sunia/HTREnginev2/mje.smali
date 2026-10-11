.class public final synthetic Lcom/sunia/HTREnginev2/mje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mje;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mje;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->_toStartDoc()V

    return-void
.end method
