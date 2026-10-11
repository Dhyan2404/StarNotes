.class public final synthetic Lcom/sunia/HTREnginev2/pje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pje;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput p2, p0, Lcom/sunia/HTREnginev2/pje;->f:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pje;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget p0, p0, Lcom/sunia/HTREnginev2/pje;->f:I

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->G0(Lorg/apache/xmlbeans/impl/store/Cursor;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
