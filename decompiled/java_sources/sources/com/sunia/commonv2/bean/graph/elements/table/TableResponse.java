package com.sunia.commonv2.bean.graph.elements.table;

import com.google.gson.annotations.SerializedName;
import com.sunia.commonv2.bean.graph.MixtureElementBean;
import com.sunia.commonv2.bean.graph.MixtureMoveBean;
import com.sunia.commonv2.bean.graph.elements.base.ElementBeanBase;
import com.sunia.commonv2.util.HWRUtil;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes10.dex */
public class TableResponse extends ElementBeanBase {

    @SerializedName("children_table")
    private List<ChildrenTable> childrenTableLevel1List;
    private TableMoveBean move;

    @SerializedName("parent_table")
    private int parentId;
    private String path;

    private TableResponse() {
        this.childrenTableLevel1List = new ArrayList();
    }

    public static TableResponse getResponseBean(MixtureElementBean mixtureElementBean) {
        TableResponse tableResponse = new TableResponse(mixtureElementBean);
        tableResponse.childrenTableLevel1List = mixtureElementBean.getChildrenTableLevel1List();
        tableResponse.path = mixtureElementBean.getPath();
        tableResponse.parentId = mixtureElementBean.getParentId();
        MixtureMoveBean mixtureMoveBean = mixtureElementBean.getMixtureMoveBean();
        if (HWRUtil.isNotEmpty(mixtureMoveBean)) {
            tableResponse.move = new TableMoveBean(mixtureMoveBean);
        }
        return tableResponse;
    }

    public List<ChildrenTable> getChildrenTableLevel1List() {
        return this.childrenTableLevel1List;
    }

    public TableMoveBean getMove() {
        return this.move;
    }

    public int getParentId() {
        return this.parentId;
    }

    public String getPath() {
        return this.path;
    }

    public TableResponse(MixtureElementBean mixtureElementBean) {
        super(mixtureElementBean);
        this.childrenTableLevel1List = new ArrayList();
    }
}
