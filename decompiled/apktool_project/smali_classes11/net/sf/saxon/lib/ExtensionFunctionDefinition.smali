.class public abstract Lnet/sf/saxon/lib/ExtensionFunctionDefinition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final asFunction(I)Lnet/sf/saxon/om/Function;
    .locals 1

    new-instance v0, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition$a;-><init>(Lnet/sf/saxon/lib/ExtensionFunctionDefinition;I)V

    return-object v0
.end method

.method public dependsOnFocus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;
.end method

.method public abstract getFunctionQName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public getMaximumNumberOfArguments()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getMinimumNumberOfArguments()I

    move-result p0

    return p0
.end method

.method public getMinimumNumberOfArguments()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ExtensionFunctionDefinition;->getArgumentTypes()[Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public abstract getResultType([Lnet/sf/saxon/value/SequenceType;)Lnet/sf/saxon/value/SequenceType;
.end method

.method public hasSideEffects()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract makeCallExpression()Lnet/sf/saxon/lib/ExtensionFunctionCall;
.end method

.method public trustResultType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
