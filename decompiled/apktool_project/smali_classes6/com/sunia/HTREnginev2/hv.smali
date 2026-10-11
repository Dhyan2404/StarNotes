.class public abstract Lcom/sunia/HTREnginev2/hv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sunia/HTREnginev2/htd;
.end annotation


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/hv;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/hv$a;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/hv$a;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/hv;->a:Lcom/sunia/HTREnginev2/hv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/sunia/HTREnginev2/hv;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/hv;->a:Lcom/sunia/HTREnginev2/hv;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Lcom/sunia/HTREnginev2/v9;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation
.end method

.method public abstract b(I)Lcom/sunia/HTREnginev2/v9;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation
.end method
