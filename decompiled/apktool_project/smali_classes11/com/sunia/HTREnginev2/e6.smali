.class public final Lcom/sunia/HTREnginev2/e6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/NotCompleted;


# static fields
.field public static final e:Lcom/sunia/HTREnginev2/e6;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/e6;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/e6;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/e6;->e:Lcom/sunia/HTREnginev2/e6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "Active"

    return-object p0
.end method
