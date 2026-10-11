.class public interface abstract Lcom/sunia/HTREnginev2/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/c1$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sunia/HTREnginev2/c1$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sunia/HTREnginev2/c1$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sunia/HTREnginev2/c1$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sunia/HTREnginev2/c1$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/sunia/HTREnginev2/c1$a;->a:Lcom/sunia/HTREnginev2/c1$a;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lcom/sunia/HTREnginev2/c1;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/sunia/HTREnginev2/c1$a;->b:Lcom/sunia/HTREnginev2/c1$a;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    sput-object v2, Lcom/sunia/HTREnginev2/c1;->b:Ljava/util/EnumSet;

    sget-object v2, Lcom/sunia/HTREnginev2/c1$a;->c:Lcom/sunia/HTREnginev2/c1$a;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    sput-object v3, Lcom/sunia/HTREnginev2/c1;->c:Ljava/util/EnumSet;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/c1;->d:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public abstract getDpiX()F
.end method

.method public abstract getDpiY()F
.end method

.method public abstract invalidate(Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sunia/HTREnginev2/c1$a;",
            ">;)V"
        }
    .end annotation
.end method
