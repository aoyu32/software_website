package com.Object;

public class Contribute {

    private Integer contributeId;
    private String contributeUserName;
    private String contributeName;
    private String contributeType;
    private String contributeText;

    public Contribute() {
    }

    public Integer getContributeId() {
        return contributeId;
    }

    public void setContributeId(Integer contributeId) {
        this.contributeId = contributeId;
    }

    public String getContributeUserName() {
        return contributeUserName;
    }

    public void setContributeUserName(String contributeUserName) {
        this.contributeUserName = contributeUserName;
    }

    public String getContributeName() {
        return contributeName;
    }

    public void setContributeName(String contributeName) {
        this.contributeName = contributeName;
    }

    public String getContributeType() {
        return contributeType;
    }

    public void setContributeType(String contributeType) {
        this.contributeType = contributeType;
    }

    public String getContributeText() {
        return contributeText;
    }

    public void setContributeText(String contributeText) {
        this.contributeText = contributeText;
    }

    @Override
    public String toString() {
        return "Contribute{" +
                "contributeId=" + contributeId +
                ", contributeUserName='" + contributeUserName + '\'' +
                ", contributeName='" + contributeName + '\'' +
                ", contributeType='" + contributeType + '\'' +
                ", contributeText='" + contributeText + '\'' +
                '}';
    }
}
