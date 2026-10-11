.class public Lnet/sf/saxon/expr/parser/XPathParser$InlineFunctionDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/parser/XPathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InlineFunctionDetails"
.end annotation


# instance fields
.field public implicitParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/instruct/UserFunctionParameter;",
            ">;"
        }
    .end annotation
.end field

.field public outerVariables:Lnet/sf/saxon/tree/util/IndexedStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/tree/util/IndexedStack<",
            "Lnet/sf/saxon/expr/LocalBinding;",
            ">;"
        }
    .end annotation
.end field

.field public outerVariablesUsed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/expr/LocalBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
