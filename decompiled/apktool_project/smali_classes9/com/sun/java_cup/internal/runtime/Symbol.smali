.class public Lcom/sun/java_cup/internal/runtime/Symbol;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public left:I

.field public parse_state:I

.field public right:I

.field public sym:I

.field used_by_parser:Z

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(II)V

    .line 16
    iput v0, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    .line 17
    iput v0, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    .line 21
    iput p1, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    .line 22
    iput p2, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->parse_state:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->used_by_parser:Z

    .line 11
    iput p1, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    .line 12
    iput p2, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    .line 13
    iput p3, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(I)V

    .line 2
    iput p2, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    .line 3
    iput p3, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    .line 4
    iput-object p4, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sun/java_cup/internal/runtime/Symbol;-><init>(I)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->left:I

    .line 7
    iput p1, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->right:I

    .line 8
    iput-object p2, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/java_cup/internal/runtime/Symbol;->sym:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
