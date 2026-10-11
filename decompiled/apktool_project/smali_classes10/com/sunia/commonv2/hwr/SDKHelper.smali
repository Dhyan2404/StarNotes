.class public Lcom/sunia/commonv2/hwr/SDKHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKHelper"


# instance fields
.field private lastPathId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/sunia/commonv2/hwr/SDKHelper;[Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/commonv2/hwr/SDKHelper;->test2([Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/sunia/commonv2/hwr/SDKHelper;I)I
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/hwr/SDKHelper;->lastPathId:I

    return p1
.end method

.method public static synthetic access$200(Lcom/sunia/commonv2/hwr/SDKHelper;Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sunia/commonv2/hwr/SDKHelper;->addOneRecognizeTask(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/util/List;I)V

    return-void
.end method

.method private addOneRecognizeTask(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/sdk/editor/Editor;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->clearContent()V

    invoke-static {p2}, Lcom/sunia/commonv2/util/HWRUtil;->getRecognizePointListV2(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->addPoints(Ljava/util/List;)[I

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->doPageRecognize(Z)V

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->getContent()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "006\u4efb\u52a1id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "SDKHelper"

    invoke-static {v1, p3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "007\u8bc6\u522b\u7ed3\u679c="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    const-class v2, Lcom/sunia/commonv2/bean/PartiBean;

    invoke-virtual {p3, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/commonv2/bean/PartiBean;

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/PartiBean;->getChars()Ljava/util/List;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "]"

    if-ge v4, v5, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/commonv2/bean/PartieWords;

    invoke-virtual {v5}, Lcom/sunia/commonv2/bean/PartieWords;->getStrokeIds()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v7, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const-string v9, ", "

    if-ge v7, v8, :cond_1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v10, p0, Lcom/sunia/commonv2/hwr/SDKHelper;->lastPathId:I

    sub-int/2addr v8, v10

    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v0

    if-eq v7, v8, :cond_0

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    if-eq v4, v5, :cond_2

    invoke-virtual {p3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "008\u7b14\u753bid="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length p1, p2

    sub-int/2addr p1, v0

    aget p1, p2, p1

    iput p1, p0, Lcom/sunia/commonv2/hwr/SDKHelper;->lastPathId:I

    return-void
.end method

.method private test1([Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 4

    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ICR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    new-instance v1, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v2, "gesture.conf"

    const-string v3, "gesture"

    invoke-direct {v1, v3, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$3;

    invoke-direct {v2, p0, p1}, Lcom/sunia/commonv2/hwr/SDKHelper$3;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper;[Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    invoke-static {v3, v0, v1, v2}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method

.method private test2()V
    .locals 5

    .line 2
    new-instance p0, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;-><init>(I)V

    const-string v0, "10,850.582214,777.737854,567.315909,1249.855036,1242.528939,1164.405925,850.582214,777.737854,52,2.360586,625.939828,1211.602766,567.315909,1249.855036,40,300.963409,51.824085,0.000000,674.649222,993.216819,550.576477,0.000000,52,2.360586,1176.224034,1141.963566,1242.528939,1164.405925,40,172.787476,51.824085,0.000000,909.944430,1246.813971,680.598389,0.000000,76,2.360586,859.370714,847.183965,850.582214,777.737854,40,44.611572,76.351837,0.000000,1074.647456,942.596526,550.576477,0.000000"

    .line 3
    invoke-virtual {p0, v0}, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->setLabel(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    const/16 v1, 0x96

    :goto_0
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    int-to-float v4, v1

    invoke-direct {v3, v4, v4}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->getPathList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    const/16 v1, 0xa0

    :goto_1
    const/16 v2, 0xd2

    if-ge v1, v2, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    int-to-float v4, v1

    invoke-direct {v3, v4, v4}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/graphicsedite/ShapeEditeBean;->getPathList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "test2"

    .line 11
    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private test2([Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ICR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    new-instance v1, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v2, "gesture"

    const-string v3, "gesture.conf"

    invoke-direct {v1, v2, v3}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$4;

    invoke-direct {v2, p0, p1}, Lcom/sunia/commonv2/hwr/SDKHelper$4;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper;[Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    const-string p0, "gesture2"

    invoke-static {p0, v0, v1, v2}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method

.method private test3()V
    .locals 4

    sget-object v0, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ICR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    new-instance v1, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v2, "math/conf/math_zh"

    const-string v3, "math_zh.conf"

    invoke-direct {v1, v2, v3}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$5;

    invoke-direct {v2, p0}, Lcom/sunia/commonv2/hwr/SDKHelper$5;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper;)V

    const-string p0, "test3"

    invoke-static {p0, v0, v1, v2}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method

.method private test5()V
    .locals 3

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v1, "recognize/conf/zh_CN"

    const-string v2, "zh_CN.conf"

    invoke-direct {v0, v1, v2}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$11;

    invoke-direct {v2, p0}, Lcom/sunia/commonv2/hwr/SDKHelper$11;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper;)V

    const-string p0, "SDKHelper"

    invoke-static {p0, v1, v0, v2}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method

.method private testBathCover()V
    .locals 4

    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "00bug/bbk0310"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRCommonUtil;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/HTREnginev2/d;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private testCoverPath()V
    .locals 0

    const-string p0, "{\"handwritingInfoList\":[{\"endTimestamp\":1711540770123,\"startTimestamp\":1711540770022,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.051770456,\"touchX\":1240.533,\"touchY\":381.23138},{\"eventType\":2,\"pressure\":0.09010989,\"touchX\":1240.533,\"touchY\":381.23138},{\"eventType\":2,\"pressure\":0.19487181,\"touchX\":1238.5321,\"touchY\":390.237},{\"eventType\":2,\"pressure\":0.24615386,\"touchX\":1237.4315,\"touchY\":402.44464},{\"eventType\":2,\"pressure\":0.26813188,\"touchX\":1236.8313,\"touchY\":412.651},{\"eventType\":2,\"pressure\":0.2722833,\"touchX\":1236.9314,\"touchY\":419.25513},{\"eventType\":2,\"pressure\":0.23516485,\"touchX\":1237.5316,\"touchY\":423.5578},{\"eventType\":2,\"pressure\":0.20293042,\"touchX\":1238.432,\"touchY\":425.05878},{\"eventType\":1,\"pressure\":0.20293042,\"touchX\":1238.432,\"touchY\":425.05878}]},{\"endTimestamp\":1711540770556,\"startTimestamp\":1711540770324,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.051770456,\"touchX\":1316.9657,\"touchY\":379.63037},{\"eventType\":2,\"pressure\":0.0942613,\"touchX\":1316.9657,\"touchY\":379.63037},{\"eventType\":2,\"pressure\":0.20512822,\"touchX\":1314.4647,\"touchY\":385.43402},{\"eventType\":2,\"pressure\":0.25836387,\"touchX\":1311.0632,\"touchY\":395.8405},{\"eventType\":2,\"pressure\":0.2859585,\"touchX\":1309.8627,\"touchY\":403.84552},{\"eventType\":2,\"pressure\":0.30500612,\"touchX\":1311.5635,\"touchY\":409.2489},{\"eventType\":2,\"pressure\":0.31746033,\"touchX\":1315.1649,\"touchY\":411.25012},{\"eventType\":2,\"pressure\":0.32405373,\"touchX\":1320.067,\"touchY\":408.44836},{\"eventType\":2,\"pressure\":0.32869354,\"touchX\":1327.0701,\"touchY\":401.6441},{\"eventType\":2,\"pressure\":0.34383395,\"touchX\":1333.1727,\"touchY\":393.2389},{\"eventType\":2,\"pressure\":0.37387058,\"touchX\":1336.274,\"touchY\":385.6341},{\"eventType\":2,\"pressure\":0.40659344,\"touchX\":1336.274,\"touchY\":379.93054},{\"eventType\":2,\"pressure\":0.42930406,\"touchX\":1333.673,\"touchY\":376.72858},{\"eventType\":2,\"pressure\":0.42539686,\"touchX\":1330.5715,\"touchY\":375.828},{\"eventType\":2,\"pressure\":0.35848597,\"touchX\":1327.1702,\"touchY\":376.8286},{\"eventType\":2,\"pressure\":0.30915752,\"touchX\":1326.2698,\"touchY\":378.02936},{\"eventType\":1,\"pressure\":0.30915752,\"touchX\":1326.2698,\"touchY\":378.02936}]},{\"endTimestamp\":1711540770905,\"startTimestamp\":1711540770674,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.070573874,\"touchX\":1387.0958,\"touchY\":367.3227},{\"eventType\":2,\"pressure\":0.11208792,\"touchX\":1387.0958,\"touchY\":367.3227},{\"eventType\":2,\"pressure\":0.20659342,\"touchX\":1387.0958,\"touchY\":367.3227},{\"eventType\":2,\"pressure\":0.23174605,\"touchX\":1389.8971,\"touchY\":374.227},{\"eventType\":2,\"pressure\":0.24639806,\"touchX\":1391.9979,\"touchY\":383.53284},{\"eventType\":2,\"pressure\":0.2732601,\"touchX\":1393.8988,\"touchY\":392.13818},{\"eventType\":2,\"pressure\":0.2993895,\"touchX\":1396.4999,\"touchY\":399.04248},{\"eventType\":2,\"pressure\":0.32039073,\"touchX\":1400.0015,\"touchY\":402.64478},{\"eventType\":2,\"pressure\":0.34017095,\"touchX\":1404.9036,\"touchY\":402.64478},{\"eventType\":2,\"pressure\":0.35897437,\"touchX\":1410.706,\"touchY\":398.8424},{\"eventType\":2,\"pressure\":0.37924302,\"touchX\":1415.9082,\"touchY\":392.03815},{\"eventType\":2,\"pressure\":0.41147745,\"touchX\":1417.609,\"touchY\":384.83362},{\"eventType\":2,\"pressure\":0.44957268,\"touchX\":1416.0083,\"touchY\":378.42963},{\"eventType\":2,\"pressure\":0.4683761,\"touchX\":1410.506,\"touchY\":374.32703},{\"eventType\":2,\"pressure\":0.3772894,\"touchX\":1402.4025,\"touchY\":374.12695},{\"eventType\":2,\"pressure\":0.2976801,\"touchX\":1396.9,\"touchY\":375.828},{\"eventType\":1,\"pressure\":0.2976801,\"touchX\":1396.9,\"touchY\":375.828}]},{\"endTimestamp\":1711540771442,\"startTimestamp\":1711540771323,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.06935287,\"touchX\":1136.6884,\"touchY\":505.00873},{\"eventType\":2,\"pressure\":0.12478633,\"touchX\":1136.6884,\"touchY\":505.00873},{\"eventType\":2,\"pressure\":0.23369965,\"touchX\":1136.9884,\"touchY\":504.60846},{\"eventType\":2,\"pressure\":0.26324788,\"touchX\":1137.2886,\"touchY\":504.10815},{\"eventType\":2,\"pressure\":0.2925519,\"touchX\":1142.5908,\"touchY\":504.10815},{\"eventType\":2,\"pressure\":0.31941393,\"touchX\":1154.2959,\"touchY\":503.5078},{\"eventType\":2,\"pressure\":0.32649574,\"touchX\":1167.0013,\"touchY\":502.4071},{\"eventType\":2,\"pressure\":0.2984127,\"touchX\":1179.8068,\"touchY\":500.70605},{\"eventType\":2,\"pressure\":0.23052505,\"touchX\":1187.9103,\"touchY\":498.5047},{\"eventType\":1,\"pressure\":0.23052505,\"touchX\":1187.9103,\"touchY\":498.5047}]},{\"endTimestamp\":1711540772043,\"startTimestamp\":1711540771840,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.047619052,\"touchX\":1314.0645,\"touchY\":459.3802},{\"eventType\":2,\"pressure\":0.083760686,\"touchX\":1314.0645,\"touchY\":459.3802},{\"eventType\":2,\"pressure\":0.18583639,\"touchX\":1316.8657,\"touchY\":460.28076},{\"eventType\":2,\"pressure\":0.24151406,\"touchX\":1323.7687,\"touchY\":464.78357},{\"eventType\":2,\"pressure\":0.2732601,\"touchX\":1326.2698,\"touchY\":469.68665},{\"eventType\":2,\"pressure\":0.2903541,\"touchX\":1324.9692,\"touchY\":475.59033},{\"eventType\":2,\"pressure\":0.3010989,\"touchX\":1320.5673,\"touchY\":482.4947},{\"eventType\":2,\"pressure\":0.31355312,\"touchX\":1315.9653,\"touchY\":489.49902},{\"eventType\":2,\"pressure\":0.33797315,\"touchX\":1312.664,\"touchY\":494.4021},{\"eventType\":2,\"pressure\":0.37094018,\"touchX\":1313.1641,\"touchY\":496.20325},{\"eventType\":2,\"pressure\":0.40195364,\"touchX\":1318.9666,\"touchY\":495.5028},{\"eventType\":2,\"pressure\":0.41440785,\"touchX\":1330.6716,\"touchY\":492.40088},{\"eventType\":2,\"pressure\":0.38730162,\"touchX\":1344.0774,\"touchY\":486.69727},{\"eventType\":2,\"pressure\":0.31623933,\"touchX\":1354.982,\"touchY\":481.29388},{\"eventType\":1,\"pressure\":0.31623933,\"touchX\":1354.982,\"touchY\":481.29388}]},{\"endTimestamp\":1711540772438,\"startTimestamp\":1711540772176,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.09987791,\"touchX\":1393.8988,\"touchY\":436.26575},{\"eventType\":2,\"pressure\":0.3015873,\"touchX\":1393.8988,\"touchY\":436.1657},{\"eventType\":2,\"pressure\":0.33601955,\"touchX\":1393.8988,\"touchY\":436.1657},{\"eventType\":2,\"pressure\":0.33162394,\"touchX\":1396.3999,\"touchY\":437.16632},{\"eventType\":2,\"pressure\":0.32087913,\"touchX\":1405.2036,\"touchY\":438.26703},{\"eventType\":2,\"pressure\":0.31526253,\"touchX\":1411.5063,\"touchY\":437.16632},{\"eventType\":2,\"pressure\":0.32063493,\"touchX\":1415.1079,\"touchY\":436.06567},{\"eventType\":2,\"pressure\":0.34041515,\"touchX\":1416.2084,\"touchY\":435.76544},{\"eventType\":2,\"pressure\":0.37118438,\"touchX\":1415.4081,\"touchY\":436.66602},{\"eventType\":2,\"pressure\":0.40463984,\"touchX\":1413.8074,\"touchY\":440.66852},{\"eventType\":2,\"pressure\":0.44249088,\"touchX\":1411.6064,\"touchY\":449.67413},{\"eventType\":2,\"pressure\":0.4761905,\"touchX\":1409.4054,\"touchY\":464.18323},{\"eventType\":2,\"pressure\":0.49328452,\"touchX\":1406.9044,\"touchY\":481.19385},{\"eventType\":2,\"pressure\":0.48717952,\"touchX\":1405.0035,\"touchY\":496.40338},{\"eventType\":2,\"pressure\":0.44468868,\"touchX\":1404.4033,\"touchY\":506.9099},{\"eventType\":2,\"pressure\":0.31843713,\"touchX\":1404.7035,\"touchY\":513.11383},{\"eventType\":2,\"pressure\":0.23736265,\"touchX\":1404.5033,\"touchY\":514.9149},{\"eventType\":1,\"pressure\":0.23736265,\"touchX\":1404.5033,\"touchY\":514.9149}]},{\"endTimestamp\":1711540773071,\"startTimestamp\":1711540772746,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.09010989,\"touchX\":1086.6669,\"touchY\":588.36084},{\"eventType\":2,\"pressure\":0.2771673,\"touchX\":1086.6669,\"touchY\":588.36084},{\"eventType\":2,\"pressure\":0.32087913,\"touchX\":1086.6669,\"touchY\":588.36084},{\"eventType\":2,\"pressure\":0.34700856,\"touchX\":1089.8682,\"touchY\":589.0613},{\"eventType\":2,\"pressure\":0.38070822,\"touchX\":1108.076,\"touchY\":588.9612},{\"eventType\":2,\"pressure\":0.41343105,\"touchX\":1137.0885,\"touchY\":586.1595},{\"eventType\":2,\"pressure\":0.44493288,\"touchX\":1177.3058,\"touchY\":580.1557},{\"eventType\":2,\"pressure\":0.48424911,\"touchX\":1223.6256,\"touchY\":571.1501},{\"eventType\":2,\"pressure\":0.53040296,\"touchX\":1274.1473,\"touchY\":562.0444},{\"eventType\":2,\"pressure\":0.5770452,\"touchX\":1325.3694,\"touchY\":555.3402},{\"eventType\":2,\"pressure\":0.63003665,\"touchX\":1371.1891,\"touchY\":551.3377},{\"eventType\":2,\"pressure\":0.6893773,\"touchX\":1411.8065,\"touchY\":549.63666},{\"eventType\":2,\"pressure\":0.73650795,\"touchX\":1445.3209,\"touchY\":547.8355},{\"eventType\":2,\"pressure\":0.76605624,\"touchX\":1475.6339,\"touchY\":544.6335},{\"eventType\":2,\"pressure\":0.78021985,\"touchX\":1499.244,\"touchY\":542.03186},{\"eventType\":2,\"pressure\":0.78461546,\"touchX\":1514.6506,\"touchY\":540.53094},{\"eventType\":2,\"pressure\":0.78388286,\"touchX\":1523.2544,\"touchY\":539.93054},{\"eventType\":2,\"pressure\":0.77411485,\"touchX\":1527.3561,\"touchY\":539.6304},{\"eventType\":2,\"pressure\":0.72478634,\"touchX\":1529.1569,\"touchY\":539.43024},{\"eventType\":2,\"pressure\":0.52380955,\"touchX\":1528.7567,\"touchY\":539.03},{\"eventType\":2,\"pressure\":0.38949943,\"touchX\":1527.8563,\"touchY\":538.62976},{\"eventType\":1,\"pressure\":0.38949943,\"touchX\":1527.8563,\"touchY\":538.62976}]},{\"endTimestamp\":1711540775509,\"startTimestamp\":1711540775178,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.094749704,\"touchX\":1411.0061,\"touchY\":590.7623},{\"eventType\":2,\"pressure\":0.2967033,\"touchX\":1411.2062,\"touchY\":590.46216},{\"eventType\":2,\"pressure\":0.35433456,\"touchX\":1411.3063,\"touchY\":590.162},{\"eventType\":2,\"pressure\":0.37558,\"touchX\":1417.909,\"touchY\":592.36334},{\"eventType\":2,\"pressure\":0.38730162,\"touchX\":1425.7124,\"touchY\":593.86426},{\"eventType\":2,\"pressure\":0.39316243,\"touchX\":1432.0151,\"touchY\":595.76544},{\"eventType\":2,\"pressure\":0.39609283,\"touchX\":1434.6163,\"touchY\":598.5672},{\"eventType\":2,\"pressure\":0.39731383,\"touchX\":1433.4158,\"touchY\":602.5697},{\"eventType\":2,\"pressure\":0.39951164,\"touchX\":1427.4132,\"touchY\":608.27325},{\"eventType\":2,\"pressure\":0.42246646,\"touchX\":1420.6102,\"touchY\":614.3771},{\"eventType\":2,\"pressure\":0.44664228,\"touchX\":1416.2084,\"touchY\":618.0794},{\"eventType\":2,\"pressure\":0.43736267,\"touchX\":1416.7086,\"touchY\":619.78046},{\"eventType\":2,\"pressure\":0.42124546,\"touchX\":1421.4106,\"touchY\":619.9806},{\"eventType\":2,\"pressure\":0.41343105,\"touchX\":1429.214,\"touchY\":619.38025},{\"eventType\":2,\"pressure\":0.42002445,\"touchX\":1435.7168,\"touchY\":619.88055},{\"eventType\":2,\"pressure\":0.44200248,\"touchX\":1438.618,\"touchY\":622.5822},{\"eventType\":2,\"pressure\":0.4725275,\"touchX\":1436.5171,\"touchY\":627.6854},{\"eventType\":2,\"pressure\":0.49914533,\"touchX\":1431.9152,\"touchY\":634.0894},{\"eventType\":2,\"pressure\":0.51233214,\"touchX\":1424.812,\"touchY\":639.0925},{\"eventType\":2,\"pressure\":0.4737485,\"touchX\":1420.01,\"touchY\":642.0944},{\"eventType\":2,\"pressure\":0.38021982,\"touchX\":1418.0092,\"touchY\":642.8949},{\"eventType\":1,\"pressure\":0.38021982,\"touchX\":1418.0092,\"touchY\":642.8949}]},{\"endTimestamp\":1711540776057,\"startTimestamp\":1711540775756,\"strokeTouchEventInfoList\":[{\"eventType\":0,\"pressure\":0.071794875,\"touchX\":1340.876,\"touchY\":588.561},{\"eventType\":2,\"pressure\":0.12991454,\"touchX\":1340.876,\"touchY\":588.561},{\"eventType\":2,\"pressure\":0.26984128,\"touchX\":1340.876,\"touchY\":588.561},{\"eventType\":2,\"pressure\":0.32332113,\"touchX\":1340.876,\"touchY\":588.561},{\"eventType\":2,\"pressure\":0.35164836,\"touchX\":1344.5776,\"touchY\":591.36273},{\"eventType\":2,\"pressure\":0.36947498,\"touchX\":1354.0817,\"touchY\":593.6641},{\"eventType\":2,\"pressure\":0.37875462,\"touchX\":1364.286,\"touchY\":593.2639},{\"eventType\":2,\"pressure\":0.38217342,\"touchX\":1374.0903,\"touchY\":591.26263},{\"eventType\":2,\"pressure\":0.38241762,\"touchX\":1379.7927,\"touchY\":589.6616},{\"eventType\":2,\"pressure\":0.38949943,\"touchX\":1381.9937,\"touchY\":589.0613},{\"eventType\":2,\"pressure\":0.40634924,\"touchX\":1381.6936,\"touchY\":588.9612},{\"eventType\":2,\"pressure\":0.41929185,\"touchX\":1380.293,\"touchY\":589.86176},{\"eventType\":2,\"pressure\":0.43223447,\"touchX\":1377.892,\"touchY\":592.9637},{\"eventType\":2,\"pressure\":0.45201468,\"touchX\":1373.7902,\"touchY\":599.5678},{\"eventType\":2,\"pressure\":0.4810745,\"touchX\":1368.4879,\"touchY\":613.4765},{\"eventType\":2,\"pressure\":0.51648355,\"touchX\":1361.885,\"touchY\":635.1901},{\"eventType\":2,\"pressure\":0.5448108,\"touchX\":1353.9817,\"touchY\":662.00684},{\"eventType\":2,\"pressure\":0.53626376,\"touchX\":1346.1783,\"touchY\":688.3233},{\"eventType\":2,\"pressure\":0.41636145,\"touchX\":1341.076,\"touchY\":709.63666},{\"eventType\":2,\"pressure\":0.32991454,\"touchX\":1340.3759,\"touchY\":717.4415},{\"eventType\":1,\"pressure\":0.32991454,\"touchX\":1340.3759,\"touchY\":717.4415}]}],\"recognizeWords\":\"https://aifamily-education-dn.tiancaixing.net/aifamily-education/pic/25775817/2024/03/27/0945/7223/cbc53e5dde945182f0076996b6ac6f8c.png\"}"

    invoke-static {p0}, Lcom/sunia/HTREnginev2/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private testEditor()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-direct {p0, v0}, Lcom/sunia/commonv2/hwr/SDKHelper;->test1([Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    return-void
.end method

.method private testErrorReplace()V
    .locals 0

    invoke-static {}, Lcom/sunia/testv2/HWRErrorReplaceTest;->test()V

    return-void
.end method

.method private testModelPrediction()V
    .locals 0

    const-string p0, "H _ { 2 } S + O _ { 2 } \\mathop { = } ^ { \u70b9 \u71c3 } S + H _ { 2 } O"

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->getConfigBean(Ljava/lang/String;)Lcom/sunia/commonv2/bean/ConfigBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/ConfigBean;->getShowName()Ljava/lang/String;

    return-void
.end method

.method public static testPoint()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sunia/commonv2/bean/TestBean;

    sget-object v2, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->EN_US:Lcom/sunia/commonv2/bean/ConfigBean;

    const-string v3, "points/2025-03-13-18-15-30-832_point.txt"

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v4}, Lcom/sunia/commonv2/hwr/SDKHelper;->testPointForAssets(Ljava/util/List;I)V

    return-void
.end method

.method public static testPoint10()V
    .locals 15

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "bbk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cache/log/app/log_2024_05_06.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->readAssetsFileToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6570\u636e\u5206\u6790\u5f00\u59cb\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    aget-object v5, v1, v4

    const-string v6, "\u6570\u636e\u5206\u6790\u7ed3\u675f"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SDKHelper"

    invoke-static {v8, v7}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v3

    const-string v9, "\u4efb\u52a1id="

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aget-object v11, v5, v9

    const-string v12, "configBean="

    invoke-virtual {v11, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    aget-object v5, v5, v13

    const-string v13, "\u4fdd\u5b58\u70b9\u4f4d\u5730\u5740="

    invoke-virtual {v5, v13, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "/cache/hwr"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v9

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    const-class v10, Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-virtual {v9, v11, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6570\u636e\u5206\u6790\u5f00\u59cb\uff1a\u4efb\u52a1id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7, v9, v5}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-static {v2, v3}, Lcom/sunia/commonv2/hwr/SDKHelper;->testPointForAssets(Ljava/util/List;I)V

    return-void
.end method

.method public static testPoint2()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sunia/commonv2/bean/TestBean;

    sget-object v2, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->EN_US:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache/hwr/tool_output/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "2025-03-13-09-36-54-574_point.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v4}, Lcom/sunia/commonv2/hwr/SDKHelper;->testPointForAssets(Ljava/util/List;I)V

    return-void
.end method

.method public static testPoint3()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_ZH:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "points/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "1.txt"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_GENERIC:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_CALCULATOR:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->EN_US:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->ZH_CN:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_CHEM:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sget-object v5, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_VERTICAL:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/sunia/commonv2/hwr/SDKHelper;->testPointForAssets(Ljava/util/List;I)V

    return-void
.end method

.method public static testPointForAssets(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/TestBean;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->release()V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/commonv2/bean/TestBean;

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineVariable;->sHWRApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sunia/commonv2/bean/TestBean;->getPointFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->readAssetsFileToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$6;

    invoke-direct {v2}, Lcom/sunia/commonv2/hwr/SDKHelper$6;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/sunia/commonv2/bean/TestBean;->getConfigBean()Lcom/sunia/commonv2/bean/ConfigBean;

    move-result-object v0

    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$7;

    invoke-direct {v2, p0, p1}, Lcom/sunia/commonv2/hwr/SDKHelper$7;-><init>(Ljava/util/List;I)V

    invoke-static {v0, v1, v2}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->startRecognize(Lcom/sunia/commonv2/bean/ConfigBean;Ljava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->release()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private testPointForFile()V
    .locals 5

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/00bug/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/sunia/commonv2/bean/TestBean;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_VERTICAL:Lcom/sunia/commonv2/bean/ConfigBean;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u7ad6\u5f0f\u8bc6\u522b\u70b9\u4f4d.txt"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/sunia/commonv2/bean/TestBean;-><init>(ILcom/sunia/commonv2/bean/ConfigBean;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static testPointForFile(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/commonv2/bean/TestBean;",
            ">;I)V"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 5
    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->release()V

    return-void

    .line 6
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/commonv2/bean/TestBean;

    .line 7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Lcom/sunia/commonv2/bean/TestBean;->getPointFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->readAssetsFileToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$8;

    invoke-direct {v2}, Lcom/sunia/commonv2/hwr/SDKHelper$8;-><init>()V

    .line 9
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 11
    invoke-virtual {v0}, Lcom/sunia/commonv2/bean/TestBean;->getConfigBean()Lcom/sunia/commonv2/bean/ConfigBean;

    move-result-object v0

    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$9;

    invoke-direct {v2, p0, p1}, Lcom/sunia/commonv2/hwr/SDKHelper$9;-><init>(Ljava/util/List;I)V

    invoke-static {v0, v1, v2}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->startRecognize(Lcom/sunia/commonv2/bean/ConfigBean;Ljava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 12
    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->release()V

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private testRecognizePoint2RecognizePath()V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "00bug/point30M.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRCommonUtil;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    new-instance v2, Lcom/sunia/commonv2/hwr/SDKHelper$2;

    invoke-direct {v2, p0}, Lcom/sunia/commonv2/hwr/SDKHelper$2;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v3, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->action:I

    if-nez v3, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "00bug/point30MV2.txt"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/sunia/commonv2/util/HWRCommonUtil;->saveTestToolPoints(Ljava/util/List;Ljava/io/File;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelKeepScreenOn(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public keepScreenOn(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public test()V
    .locals 1

    new-instance v0, Lcom/sunia/commonv2/hwr/SDKHelper$1;

    invoke-direct {v0, p0}, Lcom/sunia/commonv2/hwr/SDKHelper$1;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public test4(Landroid/content/Context;)V
    .locals 0

    new-instance p1, Lcom/sunia/commonv2/hwr/SDKHelper$10;

    invoke-direct {p1, p0}, Lcom/sunia/commonv2/hwr/SDKHelper$10;-><init>(Lcom/sunia/commonv2/hwr/SDKHelper;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
