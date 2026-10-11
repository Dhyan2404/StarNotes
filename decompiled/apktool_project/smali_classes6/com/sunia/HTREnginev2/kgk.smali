.class public final Lcom/sunia/HTREnginev2/kgk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/htd;
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/reflect/Field;

.field public final c:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "caseField",
            "valueField"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/kgk;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kgk;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kgk;->c:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kgk;->b:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/kgk;->a:I

    return p0
.end method

.method public c()Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kgk;->c:Ljava/lang/reflect/Field;

    return-object p0
.end method
