.class public final synthetic Lcom/sunia/HTREnginev2/xje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:Lorg/apache/xmlbeans/impl/store/Cursor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xje;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/xje;->f:Lorg/apache/xmlbeans/impl/store/Cursor;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/xje;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xje;->f:Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->h1(Lorg/apache/xmlbeans/impl/store/Cursor;Lorg/apache/xmlbeans/impl/store/Cursor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
