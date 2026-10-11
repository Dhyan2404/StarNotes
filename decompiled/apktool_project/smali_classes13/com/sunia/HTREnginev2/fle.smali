.class public final synthetic Lcom/sunia/HTREnginev2/fle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic f:[C

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fle;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/fle;->f:[C

    iput p3, p0, Lcom/sunia/HTREnginev2/fle;->g:I

    iput p4, p0, Lcom/sunia/HTREnginev2/fle;->h:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/fle;->e:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/fle;->f:[C

    iget v2, p0, Lcom/sunia/HTREnginev2/fle;->g:I

    iget p0, p0, Lcom/sunia/HTREnginev2/fle;->h:I

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->x0(Lorg/apache/xmlbeans/impl/store/Cursor;[CII)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
