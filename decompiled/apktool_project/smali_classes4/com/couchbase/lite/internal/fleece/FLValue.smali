.class public Lcom/couchbase/lite/internal/fleece/FLValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;
    }
.end annotation


# static fields
.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

.field private final peer:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/fleece/impl/NativeFLValue;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/fleece/FLValue;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;J)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "impl"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iput-object p1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    const-string p1, "peer"

    invoke-static {p2, p3, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    return-void
.end method

.method public static fromData(Lcom/couchbase/lite/internal/fleece/FLSliceResult;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/fleece/FLValue;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->fromData(Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;Lcom/couchbase/lite/internal/fleece/FLSliceResult;)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method public static fromData(Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;Lcom/couchbase/lite/internal/fleece/FLSliceResult;)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 5
    .param p0    # Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLSliceResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getBase()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getSize()J

    move-result-wide v3

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nFromData(JJ)J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static fromData(Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;[B)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 0
    .param p0    # Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 5
    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nFromTrustedData([B)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method public static fromData([B)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 1
    .param p0    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    sget-object v0, Lcom/couchbase/lite/internal/fleece/FLValue;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->fromData(Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;[B)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p0

    return-object p0
.end method

.method public static getFLValue(J)Lcom/couchbase/lite/internal/fleece/FLValue;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLValue;

    sget-object v1, Lcom/couchbase/lite/internal/fleece/FLValue;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue;-><init>(Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;J)V

    return-object v0
.end method

.method public static getJSONForJSON5(Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nJson5toJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJSONForJSON5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/fleece/FLValue;->NATIVE_IMPL:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->getJSONForJSON5(Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Lcom/couchbase/lite/internal/fleece/FLValue;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lcom/couchbase/lite/internal/fleece/FLValue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asArray()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFLArray()Lcom/couchbase/lite/internal/fleece/FLArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLArray;->asArray()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public asBool()Z
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsBool(J)Z

    move-result p0

    return p0
.end method

.method public asData()[B
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsData(J)[B

    move-result-object p0

    return-object p0
.end method

.method public asDict()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFLDict()Lcom/couchbase/lite/internal/fleece/FLDict;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLDict;->asDict()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public asDouble()D
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public asFLArray()Lcom/couchbase/lite/internal/fleece/FLArray;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsArray(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/fleece/FLArray;->create(J)Lcom/couchbase/lite/internal/fleece/FLArray;

    move-result-object p0

    return-object p0
.end method

.method public asFLDict()Lcom/couchbase/lite/internal/fleece/FLDict;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsDict(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/fleece/FLDict;->create(J)Lcom/couchbase/lite/internal/fleece/FLDict;

    move-result-object p0

    return-object p0
.end method

.method public asFloat()F
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsFloat(J)F

    move-result p0

    return p0
.end method

.method public asInt()J
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsInt(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public asObject()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nGetType(J)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asDict()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asArray()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asData()[B

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->isInteger()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->isUnsigned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asUnsigned()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asInt()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asBool()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public asString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public asTypedArray()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->asFLArray()Lcom/couchbase/lite/internal/fleece/FLArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLArray;->asTypedArray()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public asUnsigned()J
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nAsUnsigned(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()I
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nGetType(J)I

    move-result p0

    return p0
.end method

.method public isDouble()Z
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nIsDouble(J)Z

    move-result p0

    return p0
.end method

.method public isInteger()Z
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nIsInteger(J)Z

    move-result p0

    return p0
.end method

.method public isNumber()Z
    .locals 1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLValue;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnsigned()Z
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nIsUnsigned(J)Z

    move-result p0

    return p0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nToJSON(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJSON5()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nToJSON5(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStr()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->impl:Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-interface {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLValue$NativeImpl;->nToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withContent(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction<",
            "Ljava/lang/Long;",
            "TT;>;)TT;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/couchbase/lite/internal/fleece/FLValue;->peer:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
